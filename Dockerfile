FROM node:12.6.0-alpine AS builder

# set working directory
WORKDIR /app
COPY . ./
# add `/app/node_modules/.bin` to $PATH
# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

CMD ["npm", "start"]
EXPOSE 3000
