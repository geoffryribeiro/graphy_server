FROM node:18.20.8-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get install -y git=1:2.20.1-2+deb10u9 git-man=1:2.20.1-2+deb10u9 && \
    npm install
EXPOSE 4000
CMD node graphserver.js
