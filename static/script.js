async function loadMessages() {
    const res = await fetch("/messages");
    const data = await res.json();
    const messagesDiv = document.getElementById("messages");
    messagesDiv.innerHTML = "";

    const user = document.getElementById("username").value;

    data.forEach(msg => {
        const div = document.createElement("div");
        div.classList.add("message");
        if (msg.username === user) {
            div.classList.add("you");
        } else {
            div.classList.add("other");
        }
        div.textContent = `${msg.username}: ${msg.message}`;
        messagesDiv.appendChild(div);
    });
    messagesDiv.scrollTop = messagesDiv.scrollHeight;
}

async function sendMessage() {
    const username = document.getElementById("username").value;
    const message = document.getElementById("message").value;

    if (!username || !message) return;

    await fetch("/send", {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({username, message})
    });

    document.getElementById("message").value = "";
    loadMessages();
}

setInterval(loadMessages, 1500);
