FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    libarchive-tools \
    ca-certificates \
    reprepro \
    createrepo-c \
    rpm \
    zstd \
    xz-utils \
    gnupg \
    curl \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
