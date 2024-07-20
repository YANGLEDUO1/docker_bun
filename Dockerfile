FROM oven/bun
LABEL maintainer="EYE<eye@becypress.com>"

USER root


WORKDIR /var/lib/application

COPY ./src /var/lib/application/src
COPY ./node_modules /var/lib/application/node_modules
COPY ./ecosystem.config.cjs /var/lib/application/ecosystem.config.cjs
COPY ./package.json /var/lib/application/package.json

# RUN  npm config set registry https://registry.npmmirror.com && npm i -g bun && npm install -g pm2 \
#     && pm2 install pm2-logrotate \ 
#     && pm2 set pm2-logrotate:retain 15 \
#     && pm2 set pm2-logrotate:max_size 300M \
#     && pm2 set pm2-logrotate:compress true \ 
#     && bun -v \
#     && pm2 -v \
#     && node -v \ 

# 设置启动命令（CMD）
# CMD ["bash", "-c", "pm2 start ecosystem.config.cjs --no-daemon && pm2 logs"]
CMD ["bun","run","src/main.ts"]

