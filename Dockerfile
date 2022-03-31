FROM nginx:1.21

#WORKDIR /app

COPY ./nginx/index.html ./usr/share/nginx/html/index.html
