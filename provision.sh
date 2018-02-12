#!/bin/sh

echo Y | sudo yum update –y
sudo yum install -y httpd

sudo service httpd start
sudo chkconfig httpd on

sudo groupadd www
sudo usermod -a -G www ec2-user

sudo chown -R root:www /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} +
find /var/www -type f -exec sudo chmod 0664 {} +

cat > /var/www/html/index.html <<- "EOF"
<html>
<header><title>CMPE172</title></header>
<body>
Hello world
</body>
</html>
EOF

sudo service httpd restart
