FROM node:18-alpine

RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates libwebp libwebp-tools pngquant && \
    rm -rf /var/cache/* && \
    npm install -g svgo

RUN echo "svgo version: $(svgo -v)" && \
    echo "cwebp version: $(cwebp -version)" && \
    echo "pngquant version: $(pngquant --version)"
