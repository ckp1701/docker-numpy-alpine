FROM python:3.6-alpine
ENV PYTHONUNBUFFERED 1
ENV STATIC_ROOT /code/static
RUN apk update && \
     apk upgrade -U -a && \
     apk add postgresql-dev && \
     apk add libxml2-dev && \
     apk add libxslt-dev && \
     apk add python3-dev && \
     apk add jpeg-dev zlib-dev && \
     apk add mailcap && \
     set -e; \
     apk add --no-cache --virtual .build-deps \
         gcc \
         libc-dev \
         linux-headers

RUN apk del .build-deps

RUN pip3.6 install --no-cache-dir numpy \
    && rm -rf /var/cache/apk/*