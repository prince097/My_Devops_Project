FROM ruby:alpine
# MAINTAINER Carlos Nunez <dev@carlosnunez.me>

RUN apk add --no-cache build-base ruby-nokogiri
# above command is for library(ruby-nokogiri) and package(apk add)
RUN gem install rspec capybara selenium-webdriver 
# for installing rspec capybara and selenium
ENTRYPOINT [ "rspec" ]
# it tells container what to run
