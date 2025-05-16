FROM alpine:3.18

RUN apk add --no-cache \
    bash \
    curl \
    jq \
    iptables \
    && curl -fsSL https://pkgs.tailscale.com/stable/tailscale_1.66.4_amd64.tgz | tar xzf - -C /tmp \
    && cp /tmp/tailscale_*/tailscale /usr/sbin/ \
    && cp /tmp/tailscale_*/tailscaled /usr/sbin/

ENTRYPOINT ["/bin/sh"]
