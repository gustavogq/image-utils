if [ "$TARGETARCH" = "arm64" ]; then 
    export TARGETARCH="aarch64"
elif [ "$TARGETARCH" = "amd64" ]; then 
    export TARGETARCH="x86_64"
fi

curl "https://awscli.amazonaws.com/awscli-exe-linux-${TARGETARCH}-${AWS_CLI_VERSION}.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install