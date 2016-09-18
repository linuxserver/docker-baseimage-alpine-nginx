FROM lsiobase/alpine
MAINTAINER sparklyballs

# install packages
RUN \
 apk add --no-cache \
	git \
	nano \
	logrotate \
	nginx \
	openssl \
	php5 \
	php5-cli \
	php5-json \
	php5-fpm

COPY root/ /

EXPOSE 80 443
VOLUME /config
