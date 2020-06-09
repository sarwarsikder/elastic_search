FROM python:3.6.6-alpine3.7
ENV PYTHONUNBUFFERED 1

RUN apk update && apk add \
    bash \
    postgresql-dev \
    gcc \
    python3-dev \
    musl-dev \
    jpeg-dev \
    zlib-dev \
    freetype-dev \
    lcms2-dev \
    openjpeg-dev \
    tiff-dev \
    tk-dev \
    tcl-dev \
    harfbuzz-dev \
    fribidi-dev \
    py3-magic \
  && rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app
COPY . /app
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

