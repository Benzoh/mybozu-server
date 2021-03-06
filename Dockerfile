FROM ruby:2.5.1
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_ROOT /usr/src/mybozu
WORKDIR $APP_ROOT

ADD ./html/mybozu/Gemfile $APP_ROOT
ADD ./html/mybozu/Gemfile.lock $APP_ROOT

RUN bundle install

ADD ./html/mybozu $APP_ROOT