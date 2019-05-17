FROM ruby:2.6.3-alpine

ENV PATH "/usr/local/bundle/bin:${PATH}"
RUN apk add --update musl-dev gcc make g++ && rm -rf /var/cache/apk/*
RUN gem install cf-uaac -v 4.1.0 --no-rdoc --no-ri
WORKDIR /tmp
ENTRYPOINT [ "uaac" ]
CMD [ "--help" ]
