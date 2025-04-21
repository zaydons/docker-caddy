ARG VERSION=2.8.3

FROM docker.io/library/caddy:${VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/linode \
    --with github.com/caddy-dns/cloudflare\ 
    --with github.com/ryantiger658/route53
    
FROM docker.io/library/caddy:${VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
