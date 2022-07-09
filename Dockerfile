FROM node:18

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  git \
  ffmpeg && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/VanzGantengz/es6
RUN cd es6 
RUN npm install
RUN npm install -g pm2

COPY . .
EXPOSE 5000

CMD pm2-runtime ./es6/index.js --name heroku
