#!/bin/sh
yum -y install httpd

systemctl enable httpd
systemctl start httpd.service

echo "<h1> Murali Java Home app</h1>"  > /var/www/html/index.html
