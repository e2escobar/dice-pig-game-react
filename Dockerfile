FROM node:19.1.0-alpine as build
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build

FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY --from=build /app/dist /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]