#!/bin/sh

sudo yum update -y
sudo yum install -y docker
sudo service docker start

sudo yum install -y git

git clone https://github.com/jamescross91/packt-sample-expressapp.git

sudo docker build -t packt/packt-sample-expressapp packt-sample-expressapp/

sudo docker run -d -p 8081:8081 packt/packt-sample-expressapp
