# Caddy
A powerful open source web server (with Linode & Cloudflare DNS support).

- Built from the [offical caddy image](https://hub.docker.com/_/caddy) using the following Dockerfile.
- Includes `caddy-dns`'s [linode plugin](github.com/caddy-dns/linode).
- Includes ` caddy-dns`'s [ cloudflare plugin](https://github.com/caddy-dns/cloudflare).


## Caddyfile
You can generate a `Personal Access Token` from your [Linode Dashboard](https://cloud.linode.com/profile/tokens).
- [Linode's official doc](https://www.linode.com/docs/products/tools/linode-api/guides/get-access-token/)

You can generate an `API Token` under your [My Profile](https://dash.cloudflare.com/profile/api-tokens) page.
- [Cloudflare's official doc](https://developers.cloudflare.com/fundamentals/api/get-started/create-token/)

Your API Token only needs `Zone` `DNS` `Read/Edit` permissions.
```
your.domain.com {
  tls {
    dns linode {YOUR_LINODE_PERSONAL_ACCESS_TOKEN}
    # dns cloudflare {YOUR_CLOUDFLARE_API_TOKEN}
  }
}
```

## Notes
- I don't like using the arbitrary _"latest"_ tag.
- Any other plugins that I think is necessary may be added, depending on the use case.
