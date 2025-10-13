document.addEventListener("DOMContentLoaded", function () {
  const btnMenu = document.querySelector(".cabecalho__menu-toggle");
  const nav = document.querySelector(".cabecalho__nav");

  btnMenu.addEventListener("click", function () {
    const isOpen = nav.classList.toggle("cabecalho__nav--ativo");
    btnMenu.setAttribute("aria-expanded", isOpen);
  });
});
