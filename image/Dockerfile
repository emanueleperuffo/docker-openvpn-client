FROM emanueleperuffo/baseimage-debian:latest
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

ENV OPENVPN_HOST openvpn.example.com
ENV CLIENT_NAME client_name

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

VOLUME ["/etc/ssl/openvpn-client"]

CMD ["/sbin/my_init"]