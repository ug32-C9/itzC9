from flask import Flask, render_template, request, jsonify
import sqlite3

app = Flask(__name__)

DB = "chat.db"

def init_db():
    with sqlite3.connect(DB) as conn:
        with open("data.sql", "r") as f:
            conn.executescript(f.read())

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/send", methods=["POST"])
def send():
    data = request.get_json()
    user = data.get("username")
    msg = data.get("message")
    with sqlite3.connect(DB) as conn:
        conn.execute("INSERT INTO messages (username, message) VALUES (?, ?)", (user, msg))
        conn.commit()
    return jsonify({"status": "ok"})

@app.route("/messages")
def messages():
    with sqlite3.connect(DB) as conn:
        conn.row_factory = sqlite3.Row
        cur = conn.execute("SELECT username, message, timestamp FROM messages ORDER BY id DESC LIMIT 20")
        rows = cur.fetchall()
        result = [
            {"username": row["username"], "message": row["message"], "timestamp": row["timestamp"]}
            for row in rows
        ]
    return jsonify(result[::-1])

if __name__ == "__main__":
    init_db()
    app.run(debug=True, host="0.0.0.0", port=5000)