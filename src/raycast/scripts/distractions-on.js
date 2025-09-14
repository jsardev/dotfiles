#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Distractions: On
// @raycast.mode compact

// Optional parameters:
// @raycast.icon 🤖

const payload = {
  name: "main",
  data: {
    name: "main",
    blocked_services: ["facebook", "youtube", "linkedin", "twitter"],
    ids: ["192.168.33.101"],
    use_global_blocked_services: true,
    use_global_settings: true,
  },
};

fetch("http://adguard.lan/control/clients/update", {
  method: "POST",
  body: JSON.stringify(payload),
  headers: {
    // Fill this
    authorization: "",
    "content-type": "application/json",
  },
});
