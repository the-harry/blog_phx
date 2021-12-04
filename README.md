# BlogPhx

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Getting started

```bash
# build containers
docker-compose build

# start containers
docker-compose up

# access web container
docker-compose exec web bash

# access iex inside container
docker attach blog_phx_web_1
```


## Quality

```sh
# lint
mix credo

# sec vuns
mix sobelow --config

# specs with cover
mix coveralls.html

xdg-open cover/excoveralls.html
```

for wrong deps fetched by editor before the actual container runs, remove them by running:

`sudo rm -fr _build/ deps/ .elixir_ls/`

And run the containers again.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
