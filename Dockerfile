FROM ubuntu:24.04 AS source

FROM scratch

COPY --from=source / /

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENV LANG=C.UTF-8

CMD ["/bin/bash"]