FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs cron
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Create empty crontab file
RUN crontab -l | { cat; echo ""; } | crontab -

# Update crontab file using whenever command
RUN bundle exec whenever --update-crontab

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]