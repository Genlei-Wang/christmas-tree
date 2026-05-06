#!/bin/bash

echo "=========================================="
echo "推送到 GitHub 仓库"
echo "=========================================="
echo ""

# 检查是否已设置远程仓库
if git remote get-url origin &>/dev/null; then
    echo "✅ 远程仓库已配置："
    git remote get-url origin
    echo ""
    echo "正在推送到 GitHub..."
    git push -u origin main
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ 推送成功！"
        echo ""
        echo "下一步："
        echo "1. 访问 https://vercel.com"
        echo "2. Import Git Repository"
        echo "3. 选择你的仓库并部署"
    else
        echo ""
        echo "❌ 推送失败，请检查："
        echo "1. GitHub 仓库是否已创建"
        echo "2. 是否有推送权限"
        echo "3. 网络连接是否正常"
    fi
else
    echo "⚠️  尚未配置远程仓库"
    echo ""
    read -p "请输入你的 GitHub 用户名: " GITHUB_USER
    read -p "请输入仓库名称 (默认: christmas-tree): " REPO_NAME
    REPO_NAME=${REPO_NAME:-christmas-tree}
    
    echo ""
    echo "添加远程仓库: https://github.com/$GITHUB_USER/$REPO_NAME.git"
    git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
    
    echo ""
    echo "正在推送到 GitHub..."
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ 推送成功！"
        echo ""
        echo "下一步："
        echo "1. 访问 https://vercel.com"
        echo "2. Import Git Repository"
        echo "3. 选择你的仓库并部署"
    else
        echo ""
        echo "❌ 推送失败"
        echo ""
        echo "请确保："
        echo "1. 已在 GitHub 创建仓库: https://github.com/$GITHUB_USER/$REPO_NAME"
        echo "2. 仓库名称正确"
        echo "3. 有推送权限"
        echo ""
        echo "如果仓库尚未创建，请先访问："
        echo "https://github.com/new"
        echo "创建名为 '$REPO_NAME' 的公开仓库"
    fi
fi

echo ""
echo "=========================================="

