FROM nginx
ENV AUTHOR=Docker

WORKDIR /usr/share/nginx/html
COPY ./TestDemo/testpage.html /usr/share/nginx/html

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ testpage.html > index.html ; nginx -g 'daemon off;'
