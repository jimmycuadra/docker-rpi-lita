FROM arm32v7/ruby:2.4.1

RUN mkdir /app
WORKDIR /app
CMD ["bundle", "exec", "lita"]

ONBUILD COPY . /app
ONBUILD RUN bundle install --path /var/bundle --without development test --jobs $(nproc)
