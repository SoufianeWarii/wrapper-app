FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN addgroup -S myuser && adduser -S -G myuser myuser
RUN chown -R myuser:myuser /app

USER myuser

EXPOSE 3001

CMD ["node", "server.js"]