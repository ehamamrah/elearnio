FROM ruby:3.1.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm install -g yarn

RUN mkdir -p /elearnio
COPY . /elearnio
WORKDIR /elearnio

RUN bundle install