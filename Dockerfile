FROM openjdk:8

RUN groupadd -g 2580 htpc && \
    useradd -r -u 2580 -m -g htpc htpc && \
    apt-get update && \
    apt-get install -y wget bash dnsutils
   
USER htpc

RUN mkdir ~/ubooquity && \
cd ~/ubooquity && \
wget http://vaemendis.net/ubooquity/service/download.php && \
unzip download.php && \
rm download.php 

EXPOSE 2202
EXPOSE 2203

WORKDIR /home/htpc/ubooquity

VOLUME /programdata
VOLUME /comics
VOLUME /ebooks

CMD java -jar Ubooquity.jar --workdir /programdata --headless --remoteadmin 

