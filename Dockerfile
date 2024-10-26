FROM node:16

WORKDIR /app

RUN npm install -g pushstate-server

COPY package*.json ./
RUN npm ci --legacy-peer-deps

COPY . .

RUN npm run build

CMD ["pushstate-server", "-d", "./dist", "-p", "80"]