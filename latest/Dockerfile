FROM bitwardenrs/server:1.13.1-alpine

LABEL image=codejamninja/bitwardenrs \
  maintainer="Jam Risser <jam@codejam.ninja>" \
  base=alpine:3.11

COPY entrypoint.sh /usr/local/sbin/entrypoint.sh

RUN chmod +x /usr/local/sbin/entrypoint.sh

ENV MYSQL_DATABASE=data \
  MYSQL_HOST=mysql \
  MYSQL_PASSWORD=pass \
  MYSQL_PORT=5432 \
  MYSQL_USERNAME=root

ENTRYPOINT ["/bin/sh", "/usr/local/sbin/entrypoint.sh"]
