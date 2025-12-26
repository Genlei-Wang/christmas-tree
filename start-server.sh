#!/bin/bash
echo "=========================================="
echo "启动本地HTTP服务器"
echo "=========================================="
echo ""
echo "服务器将在 http://localhost:8000 启动"
echo ""
echo "请在浏览器中访问："
echo "  - http://localhost:8000/ChristmasTree.html"
echo "  - http://localhost:8000/ChristmasTree-sphere.html"
echo ""
echo "按 Ctrl+C 停止服务器"
echo "=========================================="
echo ""

# 检查Python是否安装
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m http.server 8000
else
    echo "错误：未找到Python。请先安装Python。"
    exit 1
fi

