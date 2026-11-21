
FROM alpine:latest
RUN apk add --no-cache wireguard-tools iptables iproute2
RUN mkdir -p /config
EXPOSE 51820/udp
EXPOSE 80/tcp
CMD ["sh", "-c", "echo 'Kenya Tunnel Lite Pro Server is Running'; sleep infinity"]
