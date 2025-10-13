const slide = document.querySelector(".slide__imagens");
const setaEsquerda = document.querySelector(".slide__setaEsquerda");
const setaDireita = document.querySelector(".slide__setaDireita");

// Scroll ao clicar nas setas
setaDireita.addEventListener("click", () => {
  slide.scrollBy({ left: 350, behavior: "smooth" });
});
setaEsquerda.addEventListener("click", () => {
  slide.scrollBy({ left: -350, behavior: "smooth" });
});
