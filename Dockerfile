FROM alpine AS builder
RUN addgroup -g 1000 -S group && \
    adduser -u 1000 -S user -G group

FROM scratch
COPY --from=builder /etc/passwd /etc/passwd
USER user
