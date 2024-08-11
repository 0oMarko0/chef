import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigation"
export default class extends Controller {
  static targets = ["nav", "main"]

  toggle() {
    if (this.navTarget.classList.contains("hidden")) {
      // Start by showing the nav and prepare the animation
      this.navTarget.classList.remove("hidden", "-translate-x-full")
      this.navTarget.classList.add("translate-x-0")

      // Adjust the main container's width
      this.mainTarget.classList.remove("w-full")
      this.mainTarget.classList.add("w-5/6")
    } else {
      // Start the animation to hide the nav
      this.navTarget.classList.remove("translate-x-0")
      this.navTarget.classList.add("-translate-x-full")

      // After the animation completes, hide the nav
      setTimeout(() => {
        this.navTarget.classList.add("hidden")
        this.mainTarget.classList.remove("w-5/6")
        this.mainTarget.classList.add("w-full")
      }, 300)
    }
  }
}
