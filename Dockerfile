FROM alpine
RUN apk update && \
    apk add libsodium && \
    apk add python3 && \
    pip3 install shadowsocks-valoroso
COPY polipo /
COPY run.sh /
COPY polipo.conf /
RUN chmod +x /polipo && \
    chmod +x /run.sh
EXPOSE 8123
CMD /run.sh
