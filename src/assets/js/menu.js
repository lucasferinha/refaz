document.addEventListener("DOMContentLoaded", () => {
  const btnMenu = document.querySelector(".cabecalho__menu-toggle");
  const nav = document.querySelector(".cabecalho__nav");
  const firstLink = nav.querySelector(".nav__link");
  const lastLink = nav.querySelector(".nav__link:last-of-type");

  const toggleMenu = () => {
    const isOpen = nav.classList.toggle("cabecalho__nav--ativo");
    btnMenu.setAttribute("aria-expanded", isOpen);
    document.body.classList.toggle("menu-aberto", isOpen);

    if (isOpen) {
      firstLink.focus();
    } else {
      btnMenu.focus();
    }
  };

  btnMenu.addEventListener("click", toggleMenu);

  // Fechar com tecla ESC
  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && nav.classList.contains("cabecalho__nav--ativo")) {
      toggleMenu();
    }
  });

  // Foco cíclico dentro do menu (melhor acessibilidade teclado)
  document.addEventListener("keydown", (e) => {
    if (!nav.classList.contains("cabecalho__nav--ativo")) return;

    if (e.key === "Tab") {
      if (e.shiftKey && document.activeElement === firstLink) {
        e.preventDefault();
        lastLink.focus();
      } else if (!e.shiftKey && document.activeElement === lastLink) {
        e.preventDefault();
        firstLink.focus();
      }
    }
  });
});

let lastScrollTop = 0;
const header = document.querySelector(".header");

window.addEventListener("scroll", () => {
  const currentScroll = window.scrollY;

  // Evita conflito: não esconde se menu estiver aberto
  const menuAberto = document.body.classList.contains("menu-aberto");
  if (menuAberto) return;

  if (currentScroll > lastScrollTop && currentScroll > 80) {
    header.classList.add("header--hidden");
  } else {
    header.classList.remove("header--hidden");
  }

  lastScrollTop = currentScroll <= 0 ? 0 : currentScroll;
});
