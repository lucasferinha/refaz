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
