FROM ruby:3.0.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN gem install bundler
RUN bundle install

# Add a script to be executed every time the container starts.
ENTRYPOINT ["bin/rails"]
EXPOSE 3000
CMD ["s", "-b", "0.0.0.0", "-p", "3000"]

