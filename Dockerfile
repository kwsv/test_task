# build project

FROM node:latest as build
WORKDIR /app
COPY . .
RUN npm i
RUN npm run build:prod

# start nginx server

FROM nginx:stable-alpine 
COPY --from=build /app/build /usr/share/nginx/html
COPY --from=build /app/nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]