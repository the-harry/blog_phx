FROM elixir:alpine

WORKDIR /blog

RUN apk add --update --no-cache curl py-pip build-base npm git inotify-tools

RUN mix local.hex --force && \
    mix local.rebar --force

COPY mix.exs mix.lock ./
COPY config config
RUN mix do deps.get, deps.compile

COPY assets assets
RUN npm install --prefix ./assets ci --progress=false --no-audit --log-level=error

COPY priv priv
COPY lib lib
