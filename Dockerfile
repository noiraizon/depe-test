FROM alpine:3.15.2

# Install dependent packages
RUN apk --update add \
    unzip

# awscli install
ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"

## Install dependent packages
RUN apk --update add \
    python \
    curl \
    groff \
    bash \
    bash-completion

## Install awscli
RUN curl ${pip_installer} | python && \
    pip install awscli
