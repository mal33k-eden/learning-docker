FROM node:alpine

WORKDIR /usr/app
#copying package.json file from our root dir
#to working dir to prevent reinstalling of packages when there are no changes
COPY ./package.json ./

RUN npm install

#copying everything from our root dir to working dir
COPY ./ ./

CMD ["npm", "start"]