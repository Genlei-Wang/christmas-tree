# 圣诞树3D交互应用

## 🎄 快速开始

### 方式1：本地运行（推荐）

**Windows用户：**
1. 双击 `start-server.bat`
2. 在浏览器访问：http://localhost:8000/ChristmasTree.html

**Mac/Linux用户：**
1. 运行 `./start-server.sh`
2. 在浏览器访问：http://localhost:8000/ChristmasTree.html

**手动启动：**
```bash
# 在项目目录下运行
python3 -m http.server 8000
# 然后访问 http://localhost:8000/ChristmasTree.html
```

### 方式2：在线访问（最简单）

将文件部署到在线服务，然后直接发送网址给同事。

#### 选项A：GitHub Pages（免费，推荐）

1. 在GitHub创建新仓库（例如：`christmas-tree`）
2. 上传所有HTML文件到仓库
3. 在仓库设置中启用 GitHub Pages
4. 选择 `main` 分支和 `/` 根目录
5. 访问：`https://你的用户名.github.io/christmas-tree/ChristmasTree.html`

#### 选项B：Netlify（免费，最简单）

1. 访问 https://www.netlify.com
2. 注册/登录账号
3. 点击 "Add new site" → "Deploy manually"
4. 将整个项目文件夹拖拽到上传区域
5. 部署完成后，会得到一个网址（例如：`https://your-site.netlify.app`）
6. 访问：`https://your-site.netlify.app/ChristmasTree.html`

#### 选项C：Vercel（免费）

1. 访问 https://vercel.com
2. 注册/登录账号
3. 点击 "New Project"
4. 导入GitHub仓库或直接上传文件夹
5. 部署完成后获得网址

#### 选项D：CodePen（在线编辑）

1. 访问 https://codepen.io
2. 创建新Pen
3. 复制HTML文件内容到HTML面板
4. 保存并分享链接

## 📁 文件说明

- `ChristmasTree.html` - 主版本（五角星装饰）
- `ChristmasTree-sphere.html` - 球体装饰版本
- `start-server.bat` - Windows启动脚本
- `start-server.sh` - Mac/Linux启动脚本
- `解决方案说明.md` - 问题排查指南

## ⚠️ 重要提示

**不要直接双击HTML文件打开！**

由于浏览器安全限制，直接打开HTML文件（file://协议）无法加载外部CDN资源（Three.js等），会导致错误。

**必须使用以下方式之一：**
1. ✅ 使用HTTP服务器（本地运行）
2. ✅ 部署到在线服务（推荐，可直接分享网址）

## 🐛 常见问题

### Q: 为什么直接打开HTML文件会报错？
A: 浏览器安全策略不允许从 `file://` 协议加载外部HTTPS资源。必须使用HTTP服务器。

### Q: 如何快速分享给同事？
A: 最简单的方式是部署到Netlify或GitHub Pages，然后直接发送网址。

### Q: 需要安装什么？
A: 只需要Python（通常已预装）。如果没有Python，可以使用在线服务。

## 📝 使用说明

1. **手势控制：**
   - 握拳：聚合圣诞树
   - 张开手掌：散开粒子
   - 捏合（拇指+食指）：放大照片

2. **功能：**
   - 📷 上传照片：点击"上传回忆"按钮
   - 🎵 音乐控制：点击音乐按钮播放/暂停

## 🔗 在线部署示例

部署后，你的网址格式可能是：
- GitHub Pages: `https://username.github.io/christmas-tree/ChristmasTree.html`
- Netlify: `https://your-site.netlify.app/ChristmasTree.html`
- Vercel: `https://your-site.vercel.app/ChristmasTree.html`

直接发送这个网址给同事即可访问！

