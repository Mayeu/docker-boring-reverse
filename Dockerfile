FROM nginx:1.15

ENV REVERSE_TARGET http://perdu.com:80

RUN mkdir /etc/boring-reverse
COPY default.template /etc/boring-reverse/default.template
COPY start-nginx /usr/local/bin/start-nginx

CMD start-nginx
