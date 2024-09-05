import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="theme"
export default class extends Controller {
  static targets = ["toggle", "body"]

  connect() {
    console.log("connect")
  }

  toggle() {

  }
}
