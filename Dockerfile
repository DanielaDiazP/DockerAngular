FROM node:12.18.3-alpine3.9

RUN mkdir /angular
COPY . /angular
WORKDIR /angular

RUN npm i
RUN npm install -g @angular/cli

CMD ng serve -o
