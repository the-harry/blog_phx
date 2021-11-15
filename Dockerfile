FROM elixir:1.11

WORKDIR /blog

RUN apt-get update -qq -y && apt-get install -qq -y curl python3 git inotify-tools

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
		curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
		echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get install -qq -y --no-install-recommends nodejs && \
		npm install --global yarn \
		apt-get clean && \
		rm -rf /var/lib/apt/lists/* && apt-get update -qq

RUN mix local.hex --force && \
    mix local.rebar --force

COPY mix.exs mix.lock ./
COPY config config
RUN mix do deps.get, deps.compile

COPY assets assets
RUN npm install --prefix ./assets ci --progress=false --no-audit --log-level=error

COPY priv priv
COPY lib lib
