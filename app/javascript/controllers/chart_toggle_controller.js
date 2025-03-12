import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chart-toggle"
export default class extends Controller {
  static targets = [ "price", "duration" ]
  connect() {
    const durationChart = document.getElementById("duration-chart");
    const priceChart = document.getElementById("price-chart");
    priceChart.classList.add("d-none");

    document.getElementById("chart-toggle").addEventListener("change", function(event) {
      if (event.target.id === "duration") {
        durationChart.classList.remove("d-none");
        priceChart.classList.add("d-none");
      } else if (event.target.id === "price") {
        durationChart.classList.add("d-none");
        priceChart.classList.remove("d-none");
      }
    });
  };
}
