# tmux-ctrl-t-vim

专为以下极端用户打造的 tmux 配置（2025 最新版）：

- 前缀键必须是 **Ctrl + t**  
- **Ctrl + h** 永远是退格/左移，绝不被 tmux 抢走  
- Vim 快捷键重度依赖者（hjkl、/ ? gg G、<C-w> 风格分割全都有）  
- 希望 tmux 像 Vim 的「超级扩展」一样自然

## 特性一览

- 前缀键：`Ctrl + t`（按两次可发送真正的 Ctrl+t 给程序用）
- Ctrl+hjkl 完全让位给 Vim 和 shell（退格、方向键）
- 面板切换改用 `Alt + h/j/k/l`（智能判断是否在 Vim 中）
- 复制模式 100% Vim 键位（v y / ? gg G 全都有）
- 水平/垂直分割仿 Vim `<C-w>v` / `<C-w>s`
- 一键放大/还原面板：`Ctrl+t +`
- 自动保存/恢复所有会话（重启电脑后直接恢复昨天环境）
- 鼠标全程支持（想用就用）
- 极简好看的状态栏，实时显示日期时间

## 最终快捷键一览（专为 Ctrl+T + Ctrl+H 退格 + Vim 重度用户设计）

| 功能                   | 快捷键                  | 说明                                      |
|-----------------------|-------------------------|-------------------------------------------|
| tmux 前缀              | `Ctrl + t`              | 所有 tmux 操作的入口                              |
| 发送真正的 Ctrl+t      | `Ctrl + t` → `Ctrl + t` | 给 Vim、shell 等程序用，不会冲突                   |
| 退格 / 向左移动        | `Ctrl + h`              | 全局彻底让出，tmux 绝不拦截                        |
| 向下 / 向上 / 向右     | `Ctrl + j/k/l`          | 在 Vim 里移动光标，在 shell 里也是方向键            |
| 切换面板（智能）       | `Alt + h/j/k/l`         | 在 Vim 里会传给 Vim，不在 Vim 里切换 tmux 面板    |
| 强制切换面板           | `Ctrl + t` → `h/j/k/l`  | 即使在 Vim 里也能强制切换                         |
| 新建窗口               | `Ctrl + t` → `c`        | 保持当前路径                                     |
| 水平分割面板           | `Ctrl + t` → `v`        | 仿 Vim `<C-w>v`                                  |
| 垂直分割面板           | `Ctrl + t` → `s`        | 仿 Vim `<C-w>s`                                  |
| 放大/还原当前面板      | `Ctrl + t` → `+`        | 一键全屏/还原                                    |
| 进入复制模式           | `Ctrl + t` → `Escape`   | 复制模式 100% Vim 键位                           |
| 复制模式开始选中       | `v`                     | visual mode                                     |
| 复制模式整行选中       | `V`                     | visual line mode                                |
| 复制并退出             | `y`                     | 自动进系统剪贴板                                 |
| 复制模式向前搜索       | `/`                     | 和 Vim 完全一致                                  |
| 复制模式向后搜索       | `?`                     | 同上                                            |
| 调整面板大小（可连按） | `Ctrl + t` → `H/J/K/L`  | 大写 H J K L，分别向左/下/上/右扩大 5 格         |
| 上一个/下一个窗口      | `Alt + </Alt + >`       | 或者用鼠标滚轮                                   |
| 切换到最近窗口         | `Ctrl + t` → `Tab`      |                                           |
| 保存所有会话           | `Ctrl + t` → `Ctrl + s` | tmux-resurrect 神器                             |
| 恢复所有会话           | `Ctrl + t` → `Ctrl + r` | 重启电脑后直接恢复昨天环境                       |
| 安装/更新插件          | `Ctrl + t` → `Shift + i`| tpm 大写 I                                      |

> 这套快捷键设计原则：**Ctrl+hjkl 永远属于 Vim 和 shell**，tmux 只用 Alt 或前缀+键位，完全零冲突，肌肉记忆只需一套！

## 一键安装（推荐）

```bash
git clone https://github.com/你的用户名/tmux-ctrl-t-vim.git ~/tmux-ctrl-t-vim
cd ~/tmux-ctrl-t-vim
chmod +x install.sh
./install.sh
