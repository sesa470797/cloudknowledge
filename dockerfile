FROM centos:latest
MAINTAINER deepakprasadc@gmall.com 
RUN yum install-y httpd \
 zip \
unzip	
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/lamoda.zip /var/www/html/ 
WORKDIR /var/www/html
RUN unzip lamoda.zip
RUN cp -rvf lamoda/* .
RUN rm -rf lamoda lamoda.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
