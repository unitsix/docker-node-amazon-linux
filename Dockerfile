FROM amazonlinux
MAINTAINER Vaya
EXPOSE 80 8500
VOLUME ["/var/www"]

# install node
WORKDIR /var

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y --nogpgcheck install nodejs
	
# install Make	
RUN yum -y install make

WORKDIR /var/www