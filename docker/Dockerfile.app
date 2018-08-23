FROM ruby:2.5.1

MAINTAINER corocn <crsk.plmzh@gmail.com>

EXPOSE 5000

# Add the wait-for-it.sh script for waiting on dependent containers
RUN curl https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh > /usr/local/bin/wait-for-it.sh \
    && chmod +x /usr/local/bin/wait-for-it.sh

# Add yarn
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# Add nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install nodejs

WORKDIR /app/

ADD Gemfile Gemfile.lock /app/
RUN gem install bundler --no-document && bundle install -j 8

ADD . /app/

RUN yarn install

#CMD ["rails", "server", "-p", "5000", "-b", "0.0.0.0"]
