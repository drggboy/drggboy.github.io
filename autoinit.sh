#先安装好git（下载地址：https://git-scm.com/download）
#node.js（node.js中包含npm,下载地址：https://nodejs.org/en）
#npm install -g hexo		#下载 Hexo

git clone https://github.com/drggboy/drggboy.github.io.git --recursive #下载
cd ./drggboy.github.io/
npm install
hexo g
hexo s&start http://localhost:4000/		#本地初始化