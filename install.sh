#!/usr/bin/env bash
set -e

echo "🚀 正在安装终极 Ctrl+T + Ctrl+H 退格 + Vim 专用 tmux 配置…"

# 备份旧配置
[ -f ~/.tmux.conf ] && mv ~/.tmux.conf ~/.tmux.conf.bak.$(date +%Y%m%d%H%M%S)
[ -d ~/.tmux ] && mv ~/.tmux ~/.tmux.bak.$(date +%Y%m%d%H%M%S)

# 复制新配置
cp tmux.conf ~/.tmux.conf

# 安装 tpm（如果没有）
if [ ! -d "~/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "✅ 配置已复制到 ~/.tmux.conf"
echo "✅ tpm 已准备好"
echo ""
echo "下一步："
echo "1. 重启 tmux 或执行： tmux source ~/.tmux.conf"
echo "2. 进入 tmux 后按 Ctrl+t 然后 Shift+i （大写 I）安装所有插件"
echo "3. 享受丝滑体验！"
