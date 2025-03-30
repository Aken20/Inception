FROM debian:11.11

EXPOSE 8000

RUN apt update
RUN yes | apt install php-fpm python3
# RUN service php7.4-fpm status
COPY ./main.py /
RUN php7.4

CMD ["/usr/bin/php7.4"]