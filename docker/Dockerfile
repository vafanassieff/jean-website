FROM nginx:1.16-alpine

WORKDIR /

COPY dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

COPY entrypoint.sh /entrypoint.sh

EXPOSE 80

ENTRYPOINT [ "/entrypoint.sh" ]

CMD ["nginx", "-g", "daemon off;"]
