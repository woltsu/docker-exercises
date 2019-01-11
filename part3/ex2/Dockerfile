FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    curl python wget ffmpeg python3-pip && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip3 install pycrypto && \
    pip install yle-dl && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    rm get-pip.py

WORKDIR /out

ENTRYPOINT ["yle-dl"]