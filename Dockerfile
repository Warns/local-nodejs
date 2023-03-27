FROM node:14-alpine

WORKDIR /src

COPY ./package.json ./
RUN npm install

RUN npm install -g gulp-cli
RUN npm install -g sass

COPY ./src .

CMD ["npm", "run", "dev"]
