# my-dev-env

个人开发环境配置与使用记录，主要用于整理 WSL、终端工具和命令行软件的配置。

## 内容

- `wsl.md`：WSL 相关配置说明。
- `terminal-tools.md`：终端模拟器、文件管理器、终端复用器等工具推荐。
- `config/`：常用命令行工具配置，目前包含：
  - `zellij` 配置
  - `yazi` 配置与主题

## 使用

按需查看文档，并将 `config/` 下的配置复制或链接到本机对应工具的配置目录。

示例：

```bash
ln -s "$(pwd)/config/zellij" ~/.config/zellij
ln -s "$(pwd)/config/yazi" ~/.config/yazi
```

如果本机已有对应配置，建议先备份再替换。

## 许可

本仓库使用 MIT License，详见 `LICENSE`。
