FROM lsiobase/alpine
MAINTAINER sparklyballs

# install packages
RUN \
 apk add --no-cache \
	git \
	nano \
	nginx \
	openssl \
	php5 \
	php5-cli \
	php5-json \
	php5-fpm && \
 sed -i '1s/^/fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;\n/' /etc/nginx/fastcgi_params

COPY root/ /

EXPOSE 80 443
VOLUME /config
