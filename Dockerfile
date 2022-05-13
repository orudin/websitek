FROM amazonlinux

RUN yum -y update &&\
    yum -y install httpd &&\
    echo “Hello EC2 Web server Step v.1.33” > /var/www/html/index.html &&\
    echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf
CMD ["usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
