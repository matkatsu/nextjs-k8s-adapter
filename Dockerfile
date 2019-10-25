FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh start.sh
RUN chmod +x start.sh
ENV NEXTJS_HOST=localhost
ENV NEXTJS_PORT=3000
ENV REDIRECT_HTTPS=true
CMD ["./start.sh"]
