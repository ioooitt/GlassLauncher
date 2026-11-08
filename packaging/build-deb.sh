#!/usr/bin/env bash
# 从源码生成本地 deb 包。生成的程序快照与 deb 均不进入版本库。
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root="$here/debian-root"
src="$here/../launcher.py"

install -Dm755 "$src" "$root/usr/bin/glass-floating-launcher"

version="$(sed -n 's/^Version: *//p' "$root/DEBIAN/control")"
out="$here/glass-floating-launcher_${version}_all.deb"

dpkg-deb --root-owner-group --build "$root" "$out"
echo "已生成: $out"
