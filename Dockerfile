FROM ruby:3.2.2

LABEL maintainer="Kakada CHHEANG <kakada@kawsang.com>"

RUN apt-get update -qq && apt-get install -y vim

RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --path ~/.bundle
ADD . /app
