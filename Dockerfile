FROM nginx:1.21

COPY ./nginx/index.html ./usr/share/nginx/html/index.html
