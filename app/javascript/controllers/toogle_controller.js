import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["moreText"];

  readMoreBtn(event) {
      this.moreTextTarget.classList.toggle('more-text');
      if (event.target.innerText === 'Découvrir') {
        event.target.innerText = 'Réduire';

      } else {
        event.target.innerText = 'Découvrir';
      }
    };
  }
