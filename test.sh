#！/bin/sh
#安装好NodeJS：https://nodejs.org/en/
#git：https://git-scm.com/downloads

#安装hexo
npm install -g hexo

#安装hexo-cli
npm install -g hexo-cli

#配置ssh：https://www.cnblogs.com/liuxianan/p/build-blog-website-by-hexo-github.html
ssh-keygen -t rsa -C "835547763@qq.com"
cat ~/.ssh/id_rsa.pub
echo '请复制以上ssh公钥到github中'
echo  '输入字母a并按回车键继续'
read -n 2
git config --global user.name "drggboy"  // 你的github用户名，非昵称
git config --global user.email  "835547763@qq.com"  // 填写你的github注册邮箱

#从GitHub上下载hexo配置文件,并且同步子模块
git clone https://github.com/drggboy/drggboy.github.io.git
cd ./drggboy.github.io/
git submodule init
git submodule update
npm install

# 在本地启动hexo
hexo g
hexo s & sleep 10
start http://localhost:4000/

