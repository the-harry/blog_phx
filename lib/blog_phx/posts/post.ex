defmodule BlogPhx.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field(:title, :string)
    field(:description, :string)

    timestamps()
  end

  def changeset(post, attrs \\ %{}) do
    post
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description], message: "Falta algum campo")
  end
end
