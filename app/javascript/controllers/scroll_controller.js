import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  scroll() {
    const target = document.getElementById(this.element.dataset.target)
    if (target) {
      target.scrollIntoView({ behavior: "smooth" })
    }
  }
}
