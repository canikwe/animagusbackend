FROM ruby:3.0-alpine3.15

WORKDIR /app

COPY . .

# Install system dependencies
RUN apk add --update --no-cache \
  build-base \
  bash \
  shared-mime-info \
  libpq-dev \
  gcompat \
  tzdata

# Install ruby dependencies
RUN gem install bundler \
  && bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]

