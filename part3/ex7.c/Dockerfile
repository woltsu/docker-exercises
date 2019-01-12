FROM alpine:latest

WORKDIR /src

COPY script.sh .

RUN apk update && apk upgrade && apk add git docker && \
    chmod +x script.sh

CMD sh /src/script.sh