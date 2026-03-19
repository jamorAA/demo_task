FROM nginx:1.29.6-alpine

EXPOSE 80
EXPOSE 443

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d/ /etc/nginx/conf.d/
COPY html/ /usr/share/nginx/html/
COPY nginx/ssl/ etc/nginx/ssl/

CMD ["nginx", "-g", "daemon off;"]
