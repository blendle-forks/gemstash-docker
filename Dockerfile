FROM ruby:2.5.1-alpine@sha256:4826914d67018ee40eb7182992d0e2abf76da928023bb7a3ff65b6dada3dfcf2

RUN addgroup -g 1000 -S gemstash && \
    adduser -u 1000 -S gemstash -G gemstash

USER gemstash

RUN gem install --no-ri --no-rdoc gemstash

CMD ["gemstash", "start", "--no-daemonize"]
