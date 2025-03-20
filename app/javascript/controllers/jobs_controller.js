  // document.addEventListener("DOMContentLoaded", function() {
  //   const jobList = document.getElementById("job-list");
  //   const links = jobList.querySelectorAll("a");

  //   links.forEach(link => {
  //     link.addEventListener("click", function(event) {

  //       // On enlève 'active' + la classe couleur de tous les liens
  //       links.forEach(l => {
  //         l.classList.remove("active", "list-group-item-primary");
  //       });

  //       // On ajoute 'active' et la couleur sur le lien cliqué
  //       this.classList.add("active", "list-group-item-primary");

  //       // Si tu veux aussi gérer l'action turbo stream, enlève le preventDefault plus haut !
  //     });
  //   });
  // });


import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["link"];

  connect() {
    // Par défaut, ajouter la classe active au premier élément lors de l'initialisation
    if (this.linkTargets.length > 0) {
      this.linkTargets[0].classList.add('active');
    }
  }

  toggleActiveClass(event) {
    // Supprimer la classe 'active' de tous les éléments
    this.linkTargets.forEach(link => {
      link.classList.remove('active');
    });

    // Ajouter la classe 'active' à l'élément cliqué
    event.target.classList.add('active');
  }
}

