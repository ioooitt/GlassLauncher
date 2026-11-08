# Glass Launcher

GNOME 桌面的常驻悬浮应用启动器。主要源码为 `launcher.py`；`assets/` 包含启动器图标，`packaging/` 包含桌面入口、用户服务和 Debian 包文件结构。

依赖 Python 3、PyGObject 和 GTK 3。桌面效果依赖 GNOME Shell 和现有的模糊扩展。

修改桌面上的源码副本不会自动更改当前安装的启动器。`packaging/debian-root` 中的程序快照由 `packaging/build-deb.sh` 在打包时从 `launcher.py` 生成，不保存在版本库中：

```bash
./packaging/build-deb.sh   # 生成 packaging/glass-floating-launcher_<版本>_all.deb
```
