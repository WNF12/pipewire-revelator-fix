# PipeWire + WirePlumber Revelator Fix

> **Project Title:** `pipewire-revelator-fix`
>
> **Repo URL:** [https://github.com/WNF12/pipewire-revelator-fix](https://github.com/WNF12/pipewire-revelator-fix)

---

## 🎯 Purpose

This package provides a **stable, tested, and reproducible configuration** for integrating the **PreSonus Revelator USB microphone** into the **PipeWire** and **WirePlumber** stack on **Ubuntu 24.04+** with full support for:

* 🎙️ Clean capture and monitoring via ALSA backend
* 🎚️ Working mixer integration in `wpctl`, `pactl`, and OBS
* 🔄 Easy restore script with fail-safe handling
* 🧩 Modular layout for future patching and multi-device support

---

## 📁 Directory Layout

```
pipewire-revelator-fix/
├── final-working/
│   ├── pipewire/                   # PipeWire config overrides
│   │   └── pipewire.conf.d/       # Default routes (optional)
│   ├── wireplumber/               # Full WirePlumber config tree
│   └── restore-pipewire.sh        # Restore script
```

---

## 🚀 Quick Start

```bash
# Clone and restore
git clone https://github.com/WNF12/pipewire-revelator-fix.git
cd pipewire-revelator-fix
bash restore-pipewire.sh
```

---

## 🛠️ Features

* ✅ Manual ALSA source/sink injection for Revelator (via `pactl`)
* ✅ Node naming and volume control recognition
* ✅ Verified compatibility with Zoom, OBS, browsers
* ✅ Autoload-safe: does not interfere with other configs
* ✅ Modular + override ready

---

## 🪛 Tools Required

* PipeWire `>= 1.0.5`
* WirePlumber `>= 0.5.0`
* PreSonus Revelator firmware updated
* `pactl`, `wpctl`, `ffmpeg` for debugging (optional)

---

## 🧪 Tested On

| Device                           | OS           | Status    |
| -------------------------------- | ------------ | --------- |
| Acer Nitro (AMD + NVIDIA hybrid) | Ubuntu 24.04 | ✅ Working |
| Zoom (Snap)                      | Full Session | ✅ Working |
| OBS Studio                       | With VST FX  | ✅ Working |
| Browser Audio                    | Online apps  | ✅ Working |

---

## 📜 Changelog

### v1.0.0 (2025-06-27)

* 🎉 Initial release
* Stable ALSA-based Revelator routing
* `restore-pipewire.sh` script
* Full WirePlumber module override tree
* Verified with Zoom, OBS, Firefox

---

## 👩‍💻 Developer Notes

* System-wide installs not required. User-level override only.
* PipeWire service restarts cleanly via:

  ```bash
  systemctl --user daemon-reexec
  systemctl --user restart pipewire pipewire-pulse wireplumber
  ```
* To manually load Revelator modules (used by the script):

  ```bash
  pactl load-module module-alsa-source device=hw:4,0 source_properties="node.name=revelator_input node.description='Revelator Microphone Input'"
  pactl load-module module-alsa-sink device=hw:4,0 sink_properties="node.name=revelator_output node.description='Revelator Monitoring Output'"
  ```

---

## 🔐 License

This project is MIT licensed. Attribution appreciated.

---

## 🤝 Contributing

Pull requests and issue reports are welcome.

---

## 👨‍🔧 Maintainer

**WNF12**
[https://github.com/WNF12](https://github.com/WNF12)
