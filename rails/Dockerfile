FROM ruby:2.5.1
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /mybozu
WORKDIR /mybozu

ADD ./html/mybozu/Gemfile /mybozu/Gemfile
ADD ./html/mybozu/Gemfile.lock /mybozu/Gemfile.lock

RUN bundle install
ADD ./html/mybozu/ /mybozu