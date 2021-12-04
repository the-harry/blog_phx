# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BlogPhx.Repo.insert!(%BlogPhx.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias BlogPhx.Posts.Post

BlogPhx.Repo.insert!(Post.changeset(%Post{}, %{title: "Phoenix", description: "elixir"}))
BlogPhx.Repo.insert!(Post.changeset(%Post{}, %{title: "Rails", description: "ruby"}))
BlogPhx.Repo.insert!(Post.changeset(%Post{}, %{title: "Golang", description: "go"}))
