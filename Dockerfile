FROM       scratch
MAINTAINER wangkexiong <wangkexiong@gmail.com>

ADD ./rootfs.tar /
RUN curl https://bootstrap.pypa.io/get-pip.py | python - &&\
    ln -s /usr/lib64/libssl.so.1.0.0 /usr/lib64/libssl.so.10 &&\
    ln -s /usr/lib64/libcrypto.so.1.0.0 /usr/lib64/libcrypto.so.10 &&\
    rm -rf /root/.cache /root/.ash_history

CMD ["/bin/sh"]
