ARG NGINX_VERSION=1.23

FROM nginx:$NGINX_VERSION

ENV NGINX_ENVSUBST_OUTPUT_DIR /etc/nginx/conf.d

COPY ./config/default.conf /etc/nginx/templates/default.conf.template
COPY ./config/server.conf /etc/nginx/templates/server.conf.template
COPY ./config/spa.conf /etc/nginx/templates/spa.conf.template
COPY ./config/env.conf /etc/nginx/templates/env.conf.template

STOPSIGNAL SIGQUIT
