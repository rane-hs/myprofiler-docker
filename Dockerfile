FROM debian:buster-slim

RUN set -ex; \
        apt-get update; \
        DEBIAN_FRONTEND=noninteractive \
        apt-get install -y --no-install-recommends \
                wget\
                tar\
                ca-certificates\
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN wget https://github.com/KLab/myprofiler/releases/download/0.1/myprofiler.linux_amd64.tar.gz && \
    tar xf myprofiler.linux_amd64.tar.gz && \
    rm myprofiler.linux_amd64.tar.gz
COPY entrypoint.sh /root/entrypoint.sh

CMD ["/root/entrypoint.sh"]
