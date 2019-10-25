#!/bin/sh

envsubst '$$NEXTJS_HOST $$NEXTJS_PORT $$REDIRECT_HTTPS'< /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

if [ $REDIRECT_HTTPS = 'false' ]; then
    sed -i '12,14d' /etc/nginx/conf.d/default.conf
fi
