defmodule BlogPhxWeb.PostController do
  use BlogPhxWeb, :controller

  alias BlogPhx.Posts.Post

  def index(conn, params) do
    posts = BlogPhx.Repo.all(Post)

    render(conn, "index.html", posts: posts)
  end

  def show(conn, %{"id" => id}) do
    post = BlogPhx.Repo.get!(Post, id)

    render(conn, "show.html", post: post)
  end

  def new(conn, params) do
    # {referer_map, list} = List.pop_at(conn.req_headers, 8)
    # {key, referer} = referer_map
    # IO.inspect(referer)

    changeset = Post.changeset(%Post{})

    render(conn, "new.html", changeset)
  end
end
