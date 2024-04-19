FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=1337
EXPOSE $PORT
CMD ["node", "index.js"]
