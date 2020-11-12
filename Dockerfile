FROM ruby:2.7.2-alpine

MAINTAINER Eddie Stack <eddiestack90@gmail.com>

ENV PORT 8080
ENV RACK_ENV=production RAILS_ENV=production
ENV RAILS_LOG_TO_STDOUT=true
ENV SECRET_KEY_BASE changeme

EXPOSE 8080

RUN addgroup -g 1000 rails && \
    adduser -S -G rails -u 1000 -h /application rails && \
    chown -R rails /usr/local/bundle && \
    apk update && \
    apk add linux-headers build-base curl zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev git nodejs file zip unzip && \
    rm -rf /var/cache/apk/*

USER rails

RUN gem install bundler && \
    bundle config build.nokogiri --use-system-libraries && \
    rm -rf /usr/lib/lib/ruby/gems/*/cache/*

USER root

ONBUILD ADD . /application
ONBUILD RUN chown -R rails /application
