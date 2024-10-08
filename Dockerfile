FROM node:20.13.0

RUN apt-get update 

RUN apt-get install -y git

RUN apt-get install -y chromium --no-install-recommends
    
RUN apt-get install -y fonts-noto-color-emoji --no-install-recommends

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium
