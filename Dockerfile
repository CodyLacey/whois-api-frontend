FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

ENV PORT=3030

EXPOSE 3030

CMD [ "npm", "start" ]