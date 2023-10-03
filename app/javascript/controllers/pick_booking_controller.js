import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pick-booking"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!" + this.element.dataset.id)
  }
}
