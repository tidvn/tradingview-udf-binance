FROM node:20-alpine
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY src ./
EXPOSE 8080
CMD ["node", "app.js"]
