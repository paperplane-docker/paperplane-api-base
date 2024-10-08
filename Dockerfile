FROM node:20.13.0

RUN apt-get update 

RUN apt-get upgrade -y

RUN apt-get install -y git

RUN apt-get install -y wget gnupg

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update 
    
RUN apt-get install -y fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf fonts-noto-color-emoji --no-install-recommends

RUN apt-get install -y google-chrome-stable libxss1 --no-install-recommends

RUN rm -rf /var/lib/apt/lists/*

ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/google-chrome-stable

CMD ["google-chrome-stable"]