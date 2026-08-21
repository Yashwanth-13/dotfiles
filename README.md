# dotfiles

Personal Linux desktop configuration — Hyprland (Wayland compositor), managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Almost every folder is a stow package that mirrors its target path under either `$HOME` or `/usr`

```
hypr/.config/hypr          Hyprland config, binds, and Lua workspace scripts
noctalia/.config/noctalia  Noctalia shell config
kitty/.config/kitty        Kitty terminal config
fish/.config/fish
fastfetch/.config/fastfetch
scripts/                   Standalone helper scripts
assets/                    Wallpapers, icons, misc resources
.vscode/                   Editor settings for this repo
```

## Highlights

- **Hyprland**, configured via Hyprland-for-Lua
- Custom Lua workspace logic: per-monitor odd/even workspace assignment (internal monitor = odd, external = even), with matching `Add_Workspace`, `Focus_Workspace`, and `Goto_Workspace` binds that stay in sync with whichever monitor is active
- **Noctalia** shell (Quickshell-based); Custom Quickshell is still in progress, tracked on a feature branch

## Usage

Clone and stow the packages:

```bash
git clone https://github.com/Yashwanth-13/dotfiles.git
cd dotfiles
stow hypr kitty noctalia fish fastfetch
stow assets/ --target=/usr/local/share
```

> Review configs before stowing because some paths (e.g. monitor names, special workspace target) may need adjusting for your setup.

## Status

Actively maintained; config iterates frequently as the setup evolves.
