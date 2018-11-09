FROM alpine:3.8
WORKDIR /space-cloud
RUN set -ex \
  && apk add --no-cache ca-certificates \
  && wget https://spaceuptech.com/downloads/linux/space-exec \
  && chmod +x space-exec
ENV PATH="/space-cloud:${PATH}"
EXPOSE 8080
CMD ["space-exec", "help"]
