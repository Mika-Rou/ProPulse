import { Controller } from "@hotwired/stimulus";
import gsap from "gsap";

export default class extends Controller {
  connect() {
    console.log("GSAP Controller Loaded! ✅");

    // Fonction pour découper le texte en span (lettre par lettre + espaces)
    function splitText(element) {
      let text = element.innerText;
      element.innerHTML = ""; // Vide le texte original
      let chars = text.split(""); // Sépare chaque caractère

      chars.forEach((char) => {
        let span = document.createElement("span");
        span.innerText = char;
        span.style.display = "inline-block";

        // Si c'est un espace, on ajoute une marge au lieu de display: inline-block
        if (char === " ") {
          span.style.width = "0.3em"; // Ajoute un espace visible entre les mots
        }

        element.appendChild(span);
      });
    }

    // Sélection des éléments à animer
    let title = document.querySelector(".fade-in-title");
    let text = document.querySelector(".fade-in-text");

    // Découpe le texte en lettres avec espaces
    splitText(title);
    splitText(text);

    // Animation des lettres une par une
    gsap.from(title.querySelectorAll("span"), {
      opacity: 0,
      x: 20,
      duration: 0.5,
      ease: "power4.out",
      stagger: 0.05, // Décalage entre chaque lettre
    });

    gsap.from(text.querySelectorAll("span"), {
      opacity: 0,
      y: 10,
      duration: 0.5,
      ease: "power2.out",
      delay: 0.5,
      stagger: 0.03,
    });

    // Animation du bouton
    gsap.from(".fade-in-btn", {
      opacity: 0,
      scale: 0.8,
      duration: 1,
      ease: "back.out(1.7)",
      delay: 1.5,
    });
  }
}
