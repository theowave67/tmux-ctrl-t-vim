# tmux-ctrl-t-vim

2025 年最新版 —— 专为以下极端用户量身打造的 tmux 配置：

- 前缀键必须是 **Ctrl + t**  
- **Ctrl + h** 永远是退格，**Ctrl + l** 永远是清屏  
- 所有 Shell 经典快捷键（Ctrl+a/e/u/w/k/r/d 等）100% 原生保留  
- Vim 快捷键重度依赖者（复制模式、分割、搜索完全 Vim 化）  
- 希望 tmux 像 Vim 的「超级扩展」一样自然，无任何键位冲突

## 特性一览

- 前缀键：`Ctrl + t`（两次可发送真正的 Ctrl+t）
- 所有 `Ctrl + ...` 快捷键彻底让给 Shell / Vim（包括 Ctrl+l 清屏）
- 面板切换改用 `Alt + h/j/k/l`（智能识别是否在 Vim 中）
- 清屏：`Ctrl + l` 丝滑无比（先给 Vim 刷新，再 clear + 清历史）
- 复制模式 100% Vim 键位（v y / ? gg G）
- 水平/垂直分割仿 Vim `<C-w>v` / `<C-w>s`
- 一键放大/还原面板：`Ctrl + t +`
- 预览所有窗口：`Ctrl + t w`
- 自动保存/恢复所有会话（重启电脑后直接恢复昨天环境）
- 鼠标全程支持 + 极简美观状态栏

## 最终快捷键一览（极致零冲突版）

| 功能                   | 快捷键                  | 说明                                      |
|------------------------|-------------------------|-------------------------------------------|
| tmux 前缀              | `Ctrl + t`              | 所有 tmux 操作入口                                |
| 发送真正的 Ctrl+t      | `Ctrl + t` → `Ctrl + t` | 给程序用，不会冲突                                |
| 退格 / 左移            | `Ctrl + h`              | 全局彻底保留                                      |
| 清屏（最丝滑）         | `Ctrl + l`              | 先给 Vim 刷新，再 clear + 清历史                  |
| 向下 / 向上 / 向右     | `Ctrl + j/k/l`          | Vim 里移动光标，Shell 里方向键                    |
| 切换面板（智能）       | `Alt + h/j/k/l`         | 在 Vim 里传给 Vim，不在则切换面板                 |
| 强制切换面板           | `Ctrl + t` → `h/j/k/l`  | 保险用                                            |
| 预览所有窗口（缩略图） | `Ctrl + t` → `w`        | 鼠标或 hjkl 选择，最常用                         |
| 新建窗口               | `Ctrl + t` → `c`        | 保持当前路径                                      |
| 水平分割面板           | `Ctrl + t` → `v`        | 仿 Vim `<C-w>v`                                   |
| 垂直分割面板           | `Ctrl + t` → `s`        | 仿 Vim `<C-w>s`                                   |
| 放大/还原当前面板      | `Ctrl + t` → `+`        | 一键全屏/还原                                     |
| 进入复制模式           | `Ctrl + t` → `Escape`   | 复制模式 100% Vim 键位                            |
| 复制模式开始选中       | `v` / `V`               | visual / visual-line                              |
| 复制并退出             | `y`                     | 自动进系统剪贴板                                  |
| 复制模式搜索           | `/` / `?`               | 和 Vim 完全一致                                   |
| 调整面板大小（可连按） | `Ctrl + t` → `H/J/K/L`  | 大写 H J K L 扩大 5 格                            |
| 上/下一个窗口          | `Alt + </Alt + >`       |                                           |
| 切换最近窗口           | `Ctrl + t` → `Tab`      |                                           |
| 保存所有会话           | `Ctrl + t` → `Ctrl + s` | resurrect 神器                                    |
| 恢复所有会话           | `Ctrl + t` → `Ctrl + r` | 重启电脑后直接恢复                                |
| 安装/更新插件          | `Ctrl + t` → `Shift + i`| tpm 大写 I                                        |

> 设计原则：**所有 Ctrl 组合键永远属于 Shell 和 Vim**，tmux 只用 Alt 或前缀+键位，肌肉记忆只需一套！

## 一键安装（强烈推荐）

```bash
git clone https://github.com/你的用户名/tmux-ctrl-t-vim.git ~/tmux-ctrl-t-vim
cd ~/tmux-ctrl-t-vim
chmod +x install.sh
./install.sh
