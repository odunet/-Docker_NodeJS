FROM node:14

#create app directory
WORKDIR /usr/src/app

#Install dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD ["node", "index.js"]