ARG VERSION=2.9.1

FROM docker.io/library/caddy:${VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/linode \
    --with github.com/caddy-dns/cloudflare
    
FROM docker.io/library/caddy:${VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
