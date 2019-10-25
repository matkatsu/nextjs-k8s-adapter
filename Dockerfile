FROM nginx:alpine
COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY start.sh start.sh
CMD ["./start.sh"]
