FROM node:12-alpine

EXPOSE 4200

RUN mkdir /angular
WORKDIR /angular

COPY package.json /angular/package.json
RUN npm install
RUN npm install -g @angular/cli

COPY . /angular

CMD npm start
