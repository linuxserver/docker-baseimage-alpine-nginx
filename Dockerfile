FROM lsiobase/alpine:3.5
MAINTAINER sparklyballs, aptalca

# install packages
RUN \
 apk add --no-cache \
 	apache2-utils \
	git \
	nano \
	logrotate \
	nginx \
	openssl \
	php5 \
	php5-cli \
	php5-json \
	php5-fpm && \

# configure nginx
 echo 'fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;' >> \
	/etc/nginx/fastcgi_params && \
 rm -f /etc/nginx/conf.d/default.conf

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80 443
VOLUME /config
