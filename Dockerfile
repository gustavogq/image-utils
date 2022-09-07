FROM alpine
ARG TARGETARCH
ENV AWS_CLI_VERSION=2.1.39

RUN apk add --no-cache bind-tools curl gcompat groff less \ 
    mysql-client openssh-client postgresql12-client redis unzip
COPY install-aws-cli.sh install-aws-cli.sh
RUN chmod +x install-aws-cli.sh && ./install-aws-cli.sh

ENTRYPOINT /bin/sh
