FROM alpine:3

RUN apk add --update curl ca-certificates && rm -rf /var/cache/apk* # Certificates for SSL

COPY route53-sidecar .

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT [ "./route53-sidecar" ]
