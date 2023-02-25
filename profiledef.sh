#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="CALIVE"
iso_label="ClearArch_$(date +%Y%m)"
iso_publisher="ClearArch <https://cleararch.github.io>"
iso_application="ClearArch Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr'
           'uefi-x64.grub.esp'
           'uefi-x64.grub.eltorito'
           )
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
