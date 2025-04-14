FROM ruby:2.7.3

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

# Set working directory
WORKDIR /app

# Install bundler
RUN gem install bundler -v 2.3.26

# Add Gemfiles and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the app code
COPY . .

# Remove Puma PID if exists
RUN rm -f tmp/pids/server.pid

# Precompile assets (optional for dev)
# RUN bundle exec rake assets:precompile

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
