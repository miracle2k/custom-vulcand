FROM scratch

COPY vulcand /app/vulcand
COPY ./vctl/vctl /app/vctl

ENV PATH=/app:$PATH

ENTRYPOINT ["/app/vulcand"]

