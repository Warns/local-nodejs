FROM node:14-alpine

WORKDIR /app

COPY ./app/package.json ./
RUN npm install

RUN npm install -g gulp-cli
RUN npm install -g sass

COPY . .

EXPOSE 3000

CMD ["npm", "start"]