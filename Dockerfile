
FROM node:lts-alpine
WORKDIR /usr/src/app
COPY DemoApplication/package*.json ./
RUN ls -l
RUN npm install
COPY DemoApplication ./
RUN ls -l
RUN npm run build
WORKDIR /usr/src/app/dist
EXPOSE 8080