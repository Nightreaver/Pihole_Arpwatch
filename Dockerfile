ARG PIHOLE_VERSION

FROM pihole/pihole:$PIHOLE_VERSION

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y nullmailer arpwatch logrotate && \
    apt-get clean 

RUN rm -rf /etc/init.d/arpwatch && \
    rm -rf /etc/services.d/arpwatch
	
ADD s6 /
