FROM alpine:edge

ADD scripts/init.sh /init.sh

CMD /sbin/apk --no-cache add openssh-client && \
    /bin/chmod +x /init.sh

ENTRYPOINT  ["/init.sh"]    
