import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "btn-approve", "btn-reject", "approve-method" ]


  connect() {
    console.log("Hello from approve stimulus controller");
	}

	approveEntry() {
		console.log(this.element)
	}

	rejectEntry() {
		console.log(this.element)
	}

}