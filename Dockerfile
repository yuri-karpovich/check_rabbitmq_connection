FROM ruby:3.3-alpine
RUN apk add --update --no-cache build-base && \
    gem install bunny
WORKDIR /usr/src/app
COPY test.rb ./test.rb
CMD ["ruby", "./test.rb"]
