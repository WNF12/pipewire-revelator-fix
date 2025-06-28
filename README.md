# PipeWire + WirePlumber Revelator Fix (Flat Version)

![Version](https://img.shields.io/badge/version-v1.0.0-green.svg)
![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-Ubuntu%2024.04-orange.svg)
![Status](https://img.shields.io/badge/stability-stable-brightgreen)
![CI](https://github.com/WNF12/pipewire-revelator-fix/actions/workflows/verify.yml/badge.svg?branch=main)


> **Project Title:** `pipewire-revelator-fix`
>
> &#x20; &#x20;
>
> **Repo URL:** [https://github.com/WNF12/pipewire-revelator-fix](https://github.com/WNF12/pipewire-revelator-fix)

---

## 🎯 Purpose

This **flat-layout** repo provides a **stable, conflict-free configuration** for integrating the **PreSonus Revelator** USB microphone into the **PipeWire + WirePlumber** stack on **Ubuntu 24.04**. It includes all working configs and a one-line restore script.

---

## 🚀 Quick Start

```bash
git clone https://github.com/WNF12/pipewire-revelator-fix.git
cd pipewire-revelator-fix
bash restore-pipewire.sh
```

---

## 🧩 Included Files (Flat Layout)

These files are directly placed in the root of the repo for easier access:

| File                                                             | Purpose                                                                                          |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| `restore-pipewire.sh`                                            | Restore script to reapply known-good config                                                      |
| `main.conf`, `wireplumber.conf`, `policy.conf`, `bluetooth.conf` | Core WirePlumber config overrides                                                                |
| `*.lua`                                                          | WirePlumber modular rule scripts, autoloaded if placed under `~/.config/wireplumber/main.lua.d/` |

---

## ✅ Verified Working

| Component          | Status |
| ------------------ | ------ |
| 🎙️ Revelator Mic  | ✅ OK   |
| 🎧 Monitoring      | ✅ OK   |
| Zoom, OBS, Browser | ✅ OK   |
| PipeWire Routing   | ✅ OK   |

---

## 🛠️ Dependencies

- PipeWire `>= 1.0.5`
- WirePlumber `>= 0.5.0`
- `pactl`, `wpctl`, `ffmpeg` (for verification only)

---

## 🧪 Tested On

| System                 | OS           | Mic                | Status   |
| ---------------------- | ------------ | ------------------ | -------- |
| Acer Nitro 17 (Hybrid) | Ubuntu 24.04 | PreSonus Revelator | ✅ Stable |

---

## 📜 Changelog

### v1.0.0 (2025-06-27)

- 🟢 Stable flat layout
- 🧰 Config split into override modules
- 🔁 Working restore and reset logic

---

## 👩‍💻 Developer Notes

To manually inject Revelator source/sink (PipeWire must be running):

```bash
pactl load-module module-alsa-source device=hw:4,0 source_properties="node.name=revelator_input node.description='Revelator Microphone Input'"
pactl load-module module-alsa-sink device=hw:4,0 sink_properties="node.name=revelator_output node.description='Revelator Monitoring Output'"
```

To restart audio system:

```bash
systemctl --user daemon-reexec
systemctl --user restart pipewire pipewire-pulse wireplumber
```

---

## 🔐 License

MIT License — use freely with attribution.

---

## 👨‍🔧 Maintainer

**WNF12**\
[https://github.com/WNF12](https://github.com/WNF12)

> Questions? Open an issue or create a PR to contribute.

## 🤝 Contributing

Pull requests are welcome! If you'd like to add support for additional USB mics, simplify routing, or improve compatibility, open an issue first to discuss the plan.
