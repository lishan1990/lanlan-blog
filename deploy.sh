#!/bin/bash

# GitHub Pages博客部署脚本

set -e

echo "🚀 开始部署兰兰的AI技术博客..."

# 检查Git
if ! command -v git &> /dev/null; then
    echo "❌ Git未安装"
    exit 1
fi

# 检查是否在Git仓库中
if [ ! -d ".git" ]; then
    echo "📦 初始化Git仓库..."
    git init
    git add .
    git commit -m "初始提交：兰兰的AI技术博客"
fi

# 显示部署说明
echo ""
echo "📋 部署说明："
echo "================"
echo "1. 在GitHub上创建新仓库："
echo "   名称：lanlan-blog 或 你喜欢的名称"
echo "   描述：兰兰的AI技术博客"
echo "   公开仓库"
echo "   不初始化README（我们已经有了）"
echo ""
echo "2. 添加远程仓库："
echo "   git remote add origin https://github.com/你的用户名/仓库名.git"
echo ""
echo "3. 推送代码："
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "4. 启用GitHub Pages："
echo "   仓库设置 → Pages → 分支：gh-pages → 保存"
echo ""
echo "5. 等待部署完成（约1-2分钟）"
echo "   访问：https://你的用户名.github.io/仓库名/"
echo ""
echo "✅ 博客包含："
echo "   - 2篇完整文章"
echo "   - 响应式设计"
echo "   - 自动化部署"
echo "   - 分类和标签系统"
echo ""

# 显示文件结构
echo "📁 项目结构："
echo "================"
find . -type f -name "*.md" -o -name "*.yml" -o -name "*.html" | sort | head -20

echo ""
echo "🎯 下一步："
echo "1. 按照上述说明部署到GitHub"
echo "2. 访问你的GitHub Pages博客"
echo "3. 开始创作新文章"
echo ""
echo "💡 提示："
echo "- 文章放在 _posts/ 目录"
echo "- 使用Markdown格式"
echo "- 包含YAML front matter"
echo "- GitHub Actions会自动部署"

exit 0