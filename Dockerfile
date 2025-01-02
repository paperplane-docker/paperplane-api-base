FROM node:20.13.0

RUN apt-get update 

RUN apt-get install -y git

RUN apt-get install -y chromium --no-install-recommends
    
RUN apt-get install -y fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf fonts-noto-color-emoji  --no-install-recommends

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium

RUN npm i -g pnpm