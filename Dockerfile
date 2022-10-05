FROM alpine:latest
LABEL maintainer="markos@chandras.me"

RUN apk add --no-cache bash ca-certificates curl git jq

COPY delete-old-branches /usr/bin/delete-old-branches

RUN pwd;ls -la 

ENTRYPOINT ["/usr/bin/delete-old-branches"]