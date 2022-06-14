import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "modal" ]

    connect() {
        console.log("The modal has been opened!");
    }
}