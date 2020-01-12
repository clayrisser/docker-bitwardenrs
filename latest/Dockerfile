FROM bitwardenrs:latest

LABEL image=codejamninja/bitwardenrs \
  maintainer="Jam Risser <jam@codejam.ninja>" \
  base=alpine:3.11

COPY entrypoint.sh /usr/local/sbin/entrypoint.sh

RUN chmod +x /usr/local/sbin/entrypoint.sh

ENV POSTGRES_DATABASE=data \
  POSTGRES_HOST=postgres \
  POSTGRES_PASSWORD=pass \
  POSTGRES_PORT=5432 \
  POSTGRES_USERNAME=postgres

ENTRYPOINT ["/bin/sh", "/usr/local/sbin/entrypoint.sh"]
