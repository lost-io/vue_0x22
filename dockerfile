#FROM node:latest as dev-stage
#WORKDIR /app
#COPY package*.json ./
#RUN yarn install
FROM node:latest as build
WORKDIR /app
COPY package*.json yarn.lock ./
RUN yarn install
COPY ./ .
RUN yarn build

FROM nginx as production
RUN mkdir /app
COPY --from=build /app/dist /app
COPY nginx/nginx.conf /etc/nginx/nginx.conf 
