function initSlide(slideContainer) {
  const slide = slideContainer.querySelector(".slide__imagens");
  const setaEsquerda = slideContainer.querySelector(".slide__setaEsquerda");
  const setaDireita = slideContainer.querySelector(".slide__setaDireita");

  function getScrollAmount() {
    const primeiroItem = slide.querySelector("img");
    return primeiroItem ? primeiroItem.offsetWidth + 16 : 350; // 16px do gap
  }

  function atualizarSetas() {
    const tolerance = 5;
    setaEsquerda.style.display =
      slide.scrollLeft <= tolerance ? "none" : "block";
    setaDireita.style.display =
      slide.scrollLeft + slide.offsetWidth >= slide.scrollWidth - tolerance
        ? "none"
        : "block";
  }

  setaDireita.addEventListener("click", () => {
    slide.scrollBy({ left: getScrollAmount(), behavior: "smooth" });
  });

  setaEsquerda.addEventListener("click", () => {
    slide.scrollBy({ left: -getScrollAmount(), behavior: "smooth" });
  });

  slide.addEventListener("scroll", atualizarSetas);

  window.addEventListener("load", atualizarSetas);
  window.addEventListener("resize", atualizarSetas);

  atualizarSetas();
}

document.addEventListener("DOMContentLoaded", () => {
  const slides = document.querySelectorAll(".slide__conteudo");
  slides.forEach(initSlide);
});
