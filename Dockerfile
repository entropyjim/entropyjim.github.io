FROM ruby:2.5.8

ADD Gemfile /app/
ADD Gemfile.lock /app/

WORKDIR /app/

RUN bundle install

ADD . /app/

EXPOSE 4000
ENTRYPOINT ["jekyll", "serve", "--host", "0.0.0.0", "--drafts", "--future", "--watch"]
