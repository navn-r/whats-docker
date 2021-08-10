FROM node:16-alpine3.14 as base

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD ["npm", "start"]