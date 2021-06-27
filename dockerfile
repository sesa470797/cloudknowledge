FROM centos:latest
MAINTAINER deepakprasadc@gmall.com 
RUN yum install httpd -y \
 zip \
unzip	
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/modular-business.zip /var/www/html/ 
WORKDIR /var/www/html
RUN unzip modular-business.zip
RUN cp.rvf markups-modular-business/* .
RUN rm.rf _MACOSX markups-modular-business modular-business.zip 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 
