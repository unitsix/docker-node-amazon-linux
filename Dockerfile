FROM amazonlinux
MAINTAINER Vaya
EXPOSE 80 8500
VOLUME ["/var/app"]

# install node
WORKDIR /var

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y --nogpgcheck install nodejs
RUN npm cache clean -f && npm install -g n && npm install -g which && n stable
	
# install Make	
RUN yum -y install make

WORKDIR /var/app