FROM ubuntu
MAINTAINER shivaramakrishnathota@gmail.com
RUN apt-get update -y &&  apt-get install -y apache2 && apt-get clean
COPY ./shiva.html /var/www/html/
#ADD
#WORKDIR
#ENV
## we can use entrypoint like bellow 
ENTRYPOINT service apache2 start && /bin/bash
#VOLUME
EXPOSE 80
#CMD ["/bin/bash"]

# Example Dockerfile for creating apache2 container from scartch