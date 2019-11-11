from jmeritt/debian-htpc

RUN apt-get update && apt-get install -y default-jdk unzip

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

