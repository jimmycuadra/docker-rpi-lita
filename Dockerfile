FROM jimmycuadra/rpi-ruby:2.4.0

RUN mkdir /app
WORKDIR /app
CMD ["bundle", "exec", "lita"]

ONBUILD COPY . /app
ONBUILD RUN bundle install --path /var/bundle --without development test --jobs $(nproc)
