FROM node:18

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  git \
  ffmpeg && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /root/xyvnz
RUN npm i -g pm2
COPY package.json .
RUN npm install
COPY . .
RUN cd /tmp && git clone https://github.com/VanzGantengz/es6 && cp -rf es6 ~ && rm -rf es6
CMD pm2 start index.js --name uh
