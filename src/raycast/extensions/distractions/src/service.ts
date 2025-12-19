import { getPreferenceValues, showToast, Toast } from "@raycast/api";
import type { AdGuardClientUpdate } from "./types";

enum State {
	OFF = "OFF",
	ON = "ON",
}

class DistractionsService {
	private preferences: Preferences;

	constructor() {
		this.preferences = getPreferenceValues();
	}

	private getPayload(state: State): AdGuardClientUpdate {
		return {
			name: "main",
			data: {
				name: "main",
				blocked_services: this.preferences.services.split(","),
				ids: this.preferences.ips.split(","),
				use_global_blocked_services: state === State.ON,
				use_global_settings: true,
			},
		};
	}

	private getAuthorizationHeader() {
		return `Basic ${this.preferences.accessToken}`;
	}

	private execute(state: State) {
		const payload = this.getPayload(state);
		const authorization = this.getAuthorizationHeader();

		return fetch("http://adguard.lan/control/clients/update", {
			method: "POST",
			body: JSON.stringify(payload),
			headers: {
				authorization,
				"content-type": "application/json",
			},
		});
	}

	async on() {
		await showToast({
			style: Toast.Style.Animated,
			title: "Turning distractions on...",
		});

		await this.execute(State.ON);

		await showToast({
			style: Toast.Style.Success,
			title: "Distractions turned on",
		});
	}

	async off() {
		await showToast({
			style: Toast.Style.Animated,
			title: "Turning distractions off...",
		});

		await this.execute(State.OFF);

		await showToast({
			style: Toast.Style.Success,
			title: "Distractions turned off",
		});
	}
}

export const distractionsService = new DistractionsService();
