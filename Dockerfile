FROM alpine
ENV AWS_CLI_VERSION=2.1.39

RUN apk add --no-cache bind-tools curl gcompat groff less \ 
    mysql-client openssh-client postgresql12-client redis unzip
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip" -o "awscliv2.zip"
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64-${AWS_CLI_VERSION}.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && ./aws/install

ENTRYPOINT /bin/sh
