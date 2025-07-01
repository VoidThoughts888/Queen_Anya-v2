FROM node:20.18.1-buster

RUN apt-get update && \
    apt-get install -y ffmpeg webp git && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://pikabotz1@bitbucket.org/pikabotz1/anya_v2-md.git anya-v2

WORKDIR /anya-v2

RUN yarn install --production

RUN yarn global add pm2

CMD ["npm", "start"]
