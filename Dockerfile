From node:erbium-alpine3.12
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]