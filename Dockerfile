# 本体
#
# VERSION               0.0.1

FROM      gendosu/ruby-node:ruby-2.3.7-node-8.11.3

ENV PATH "/root/.ndenv/shims:/root/.ndenv/bin:/products/node_modules/.bin:$PATH"

WORKDIR /products

COPY Gemfile* /products/

RUN apt-get update \
  && apt-get install -y --force-yes \
  build-essential \
  cmake \
  gconf-service \
  glib-networking \
  fonts-liberation \
  libgtk-3-0 \
  libappindicator1 \
  libappindicator3-1 \
  &&  apt-get clean \
  &&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
  &&  bundle

RUN rm Gemfile*
