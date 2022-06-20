import { Controller } from "@hotwired/stimulus"

export default class extends Controller {


	initialize() {
		console.log("Hello from modal controller!");
	}



	open() {
		document.body.classList.add("modal-open");
		this.element.setAttribute("style", "display: block;");
		this.element.classList.add("show");
		document.body.innerHTML += '<div class="modal-backdrop fade show"></div>';
	}

	close() {
		document.body.classList.remove("modal-open");
		this.element.setAttribute("style", "display: none;");
		this.element.classList.remove("show");
		document.querySelector(".modal-backdrop").remove();
	}
}