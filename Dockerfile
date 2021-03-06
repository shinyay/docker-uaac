FROM ruby:2.6.3-alpine

ENV PATH "/usr/local/bundle/bin:${PATH}"
RUN apk add --update musl-dev gcc make g++ && rm -rf /var/cache/apk/*
RUN gem install cf-uaac -v 4.2.0 --no-document
WORKDIR /tmp
ENTRYPOINT [ "uaac" ]
CMD [ "--help" ]
