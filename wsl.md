官方文档：https://learn.microsoft.com/zh-cn/windows/wsl/

关于 wsl 的配置文件：https://learn.microsoft.com/zh-cn/windows/wsl/wsl-config

以下是我用的配置，仅做参考

**%USERPROFILE%/.wslconfig**

默认配置可能性能较差，分配更多硬件资源可以提升性能，减少卡顿

```ini
[wsl2]

# 内存大小
memory=12GB

# 线程数
processors=6

# 交换空间大小
swap=6GB

# 设置交换文件路径
swapfile=M:\\wsl-swap.vhdx

# 开启 localhost 转发
# localhostForwarding=true
```

**/etc/wsl.conf**

appendWindowsPath 会把 windows 上的 PATH 加入到 wsl 的 PATH 里，这可能会导致命令冲突，而且路径较多时会大幅降低 wsl 的补全性能，导致 tab 补全卡顿，建议设置为 false

```ini
[boot]
systemd=true

[interop]
appendWindowsPath=false
```

