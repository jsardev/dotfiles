import { distractionsService } from "./service";

export default function Command() {
	return distractionsService.on();
}
