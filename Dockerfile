# Starting from a ruby base image
FROM ruby:3.1
RUN gem install bunny
WORKDIR /usr/src/app
COPY test.rb ./test.rb
CMD ["ruby", "./test.rb"]
