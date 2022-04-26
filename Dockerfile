FROM ruby:2.6.3

RUN apt-get update && apt-get install -y --no-install-recomends sqlite3

WORKDIR /usr/src/app
COPY Gemfile ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD [ "rails", "server", "-b", "0.0.0.0" ]