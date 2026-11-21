FROM alpine:latest
RUN apk add --no-cache wireguard-tools iptables iproute2
COPY wg0.conf /etc/wireguard/wg0.conf
RUN sysctl -w net.ipv4.ip_forward=1
EXPOSE 51820/udp
EXPOSE 80/tcp
CMD ["sh", "-c", "wg-quick up wg0; sleep infinity"]
