FROM ubuntu:22

RUN apt-get update
RUN apt-get install -y nginix zip curl
RUN echo "daemon off;" /etc/nginix/nginix.conf
RUN curl -o /var/www/html/master.zip -L https://codeload.github.com/gabrielecirulli/2048/zip/master
RUN cd/var/www/html/ && unzip master.zip && mv 2048-master/* . && rm -rf 2048.master master.zip
EXPOSE 80
CMD ["/usr/sbin/nginix", "-c", "/etc/nginix/nginix.conf"]