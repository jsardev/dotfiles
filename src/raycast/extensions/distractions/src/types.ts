export interface AdGuardClientUpdate {
	name: string;
	data: {
		name: string;
		blocked_services: string[];
		ids: string[];
		use_global_blocked_services: boolean;
		use_global_settings: boolean;
	};
}
