import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

	static targets = ['name', 'title', 'email'];

  connect() {
    console.log("Hello from co-host-modal-controller!");
  }

	setCoHostContent(data) {
		this.nameTarget.innerHTML = data.name;
		this.titleTarget.innerHTML = data.title;
		this.emailTarget.href = `mailto:`+ data.email;
		this.emailTarget.innerHTML = data.email;
	}
}