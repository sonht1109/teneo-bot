FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN addgroup --system --gid 1001 ubuntu
RUN adduser --system --uid 1001 ubuntu

USER ubuntu

COPY . .

CMD ["node", "index.js"]