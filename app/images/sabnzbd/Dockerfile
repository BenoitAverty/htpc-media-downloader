FROM ubuntu:trusty

ENV DEBIAN_FRONTEND="noninteractive" \
    LANG="en_US.UTF-8" \
    LC_ALL="C.UTF-8" \
    LANGUAGE="en_US.UTF-8"

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" >> /etc/apt/sources.list && \
    apt-get -q update && \
    apt-get -qy --force-yes dist-upgrade && \
    apt-get install -qy curl python-software-properties software-properties-common supervisor ca-certificates procps

RUN add-apt-repository -y  ppa:jcfp/ppa && \
    apt-get -q update && \
    apt-get install -qy --force-yes  sabnzbdplus \
    par2 python-yenc unzip unrar && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 8080

CMD ["/usr/bin/sabnzbdplus","--config-file","/mnt/config","--server",":8081","--console"]
