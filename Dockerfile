FROM ruby:2.4.0

# Install Dependencies
COPY Gemfile* /tmp/gems/
WORKDIR /tmp/gems
RUN gem install bundler
RUN bundle install

# Add work directory and move project files to it
WORKDIR /test_api
ADD . /test_api