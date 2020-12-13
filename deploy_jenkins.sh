export PATH=/root/node-v12.8.1-linux-x64/bin:$PATH
npm config set registry http://registry.npm.taobao.org/
# 安装yarn
npm i yarn -g
# yarn切换为淘宝源
yarn config set registry https://registry.npm.taobao.org
###

# 安装项目中的依赖
yarn
# 打包
yarn build


# 创建新镜像
docker build -t gjf/admin . && \

docker stop admin

docker rm admin

# 使用 docker stack 启动服务
docker run --name admin -d -p 801:80  gjf/admin