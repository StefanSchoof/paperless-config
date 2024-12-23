FROM debian:bookworm-slim

WORKDIR /azcopy

ADD https://aka.ms/downloadazcopy-v10-linux-arm64 azcopy.tar.gz
RUN apt-get update && \
    apt-get install -y ca-certificates rsync && \
    tar -xzf azcopy.tar.gz && \
    rm azcopy.tar.gz && \
    cp azcopy_linux*/azcopy /usr/local/bin/azcopy