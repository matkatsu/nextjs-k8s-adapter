#!/bin/sh

export NEXTJS_HOST=localhost
export NEXTJS_PORT=3000
export REDIRECT_HTTPS=true

if [ $REDIRECT_HTTPS = 'true' ]; then
    sed -i '12,14d' default.conf.template
fi

# envsubst '$$NEXTJS_HOST $$NEXTJS_PORT'< default.conf.template > default.conf

# envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
# nginx -g "daemon off;"
