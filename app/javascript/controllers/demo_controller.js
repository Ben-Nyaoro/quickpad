import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

	static targets = ["modal"]

	initialize() {
		console.log("Hello from demo controller!");
	}

	launchDemo(event) {
	const modalController = this.application.getControllerForElementAndIdentifier(
		this.modalTarget,
		"modal"
		);

	const coHostModalController = this.application.getControllerForElementAndIdentifier(
		this.modalTarget,
		"co-host-modal"
	);

		coHostModalController.setCoHostContent(event.currentTarget.dataset);
		modalController.open();
	}
}
