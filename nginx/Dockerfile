FROM debian:buster-slim

RUN apt-get update && apt-get install -y curl gnupg && \
    echo "deb http://nginx.org/packages/debian buster nginx">/etc/apt/sources.list.d/nginx.list && \
    curl -fsSL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
    apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

CMD ["nginx","-g","daemon off;"]