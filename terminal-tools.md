# Terminal tools

### 终端模拟器

虽然系统自带终端能用，比如 cmd、PowerShell 或 VSCode 终端，但独立终端模拟器更适合高频开发场景：多标签、分屏、快捷键、自定义、渲染性能、跨 shell 统一体验都更好，做 ssh、看日志、跑多任务时会更顺手，也更高效。

Windows Terminal 我已经弃用，不再作为主力。唯一优点是系统自带；缺点是速度慢、偶尔有显示 bug、图像协议支持差，而且不能跨平台。

推荐：[WezTerm](https://wezterm.org)

其它替代：

- [Alacritty](https://alacritty.org/)

  锐评：听说速度快

- [Ghostty](https://ghostty.org/)

  锐评：听说口碑好

- [kitty](https://github.com/kovidgoyal/kitty)

  不予评价



### 终端文件管理器

终端文件管理器是运行在命令行里的文件浏览工具，用来更高效地查看、跳转、复制、移动、重命名和预览文件。相比纯 `cd` / `ls`，它有更直观的界面和更快的键盘操作体验。

老一套：[ranger](https://github.com/ranger/ranger)

新方法：[yazi](https://yazi-rs.github.io/)



### 终端复用器

终端复用器是在一个终端窗口里管理多个会话、面板和任务的工具。它可以分屏、切换标签、保持后台进程持续运行，即使断开 ssh 或关闭终端，很多任务也不会丢。

老一套：[tmux](https://github.com/tmux/tmux)

新方法：[zellij](https://zellij.dev/)

