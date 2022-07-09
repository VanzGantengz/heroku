FROM node:18

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  git \
  ffmpeg && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir xyvnz && cd xyvnz && git clone https://github.com/VanzGantengz/es6 && cd es6 && npm i && npm i -g pm2 && pm2-runtime index.js --name uh
