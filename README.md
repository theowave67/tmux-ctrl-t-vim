# tmux-ctrl-t-vim

专为以下极端用户打造的 tmux 配置（2025 最新版）：

- 前缀键必须是 **Ctrl + t**  
- **Ctrl + h** 永远是退格/左移，绝不被 tmux 抢走  
- Vim 快捷键重度依赖者（hjkl、/ ? gg G、<C-w> 风格分割全都有）  
- 希望 tmux 像 Vim 的「超级扩展」一样自然

## 特性一览

| 习惯                  | 实现方式                     |
|-----------------------|------------------------------|
| 前缀键                | Ctrl + t                     |
| 发送真正的 Ctrl+t     | Ctrl+t → Ctrl+t              |
| Backspace             | Ctrl + h（全局彻底让出）     |
| 面板切换              | Alt + h/j/k/l（智能识别 Vim）|
| 复制模式              | 100% Vim 键位（v y / ? gg G）|
| 水平/垂直分割         | Ctrl+t v / Ctrl+t s          |
| 放大/还原面板         | Ctrl+t +                     |
| 自动保存/恢复会话     | tmux-continuum + resurrect   |
| 鼠标支持              | 全开（想用就用）             |

## 一键安装（推荐）

```bash
git clone https://github.com/你的用户名/tmux-ctrl-t-vim.git ~/tmux-ctrl-t-vim
cd ~/tmux-ctrl-t-vim
chmod +x install.sh
./install.sh
