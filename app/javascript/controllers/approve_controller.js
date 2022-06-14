import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "btn-approve", "btn-reject", "modal" ]


  connect() {
    console.log("Hello from approve stimulus controller");
	}

	approveEntry() {
		console.log("event");
	}

	rejectEntry() {
		console.log(this.element)
	}

	showModal(event) {
		this.modalTarget.innerHTML = this.element.dataset.id
		this.modalTarget.classList.add("is-active")
		console.log(event);
	}

}