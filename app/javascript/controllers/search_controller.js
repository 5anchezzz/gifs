import {Controller} from "stimulus"

export default class extends Controller {
    static targets = ["field"]

    focus(event) {
        if (event.key == "Enter") {
            window.location = `/${this.fieldTarget.value}`
        } else {
            this.fieldTarget.focus()
        }
    }
}