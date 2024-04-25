FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY index.js ./

FROM build AS development
CMD ["npm", "run", "develop"]

FROM build AS production
CMD ["node", "index.js"]
