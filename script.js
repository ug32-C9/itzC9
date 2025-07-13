function showSlide(id) {
  document.getElementById('script-slide').style.display = 'none';
  document.getElementById('shop-slide').style.display = 'none';
  document.getElementById('support-slide').style.display = 'none';
  document.getElementById(id + '-slide').style.display = 'block';
  toggleMenu(false);
}

function copyCode() {
  const code = document.getElementById("script-code").innerText;
  navigator.clipboard.writeText(code).then(() => {
    const btn = document.querySelector(".btn-copy");
    btn.textContent = "Copied!";
    btn.classList.add("copied");
    setTimeout(() => {
      btn.textContent = "Copy";
      btn.classList.remove("copied");
    }, 2000);
  });
}

function toggleMenu(force) {
  const menu = document.querySelector('.side-menu');
  if (typeof force === 'boolean') {
    menu.style.display = force ? 'block' : 'none';
  } else {
    menu.style.display = (menu.style.display === 'block') ? 'none' : 'block';
  }
}

window.addEventListener("load", () => {
  document.getElementById("loader").style.display = "none";
});
