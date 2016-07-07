FROM linuxserver/couchpotato

RUN ["mkdir", "/couchpotato_work"]

COPY ["etc_service_couchpotato_run", "/etc/service/couchpotato/run"]

RUN ["chown", "1000:1000", "/couchpotato_work", "/etc/service/couchpotato/run"]
RUN ["chmod", "+x", "/etc/service/couchpotato/run"]

ENV PUID 1000
ENV PGID 1000
