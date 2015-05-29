FROM emanueleperuffo/baseimage-debian:latest
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

ENV OPENVPN_HOST openvpn.example.com
ENV OPENVPN_CLIENT_DEV tun10

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

VOLUME ["/etc/ssl/openvpn-client"]

CMD ["/sbin/my_init"]