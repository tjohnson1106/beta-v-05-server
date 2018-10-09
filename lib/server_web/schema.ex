defmodule ServerWeb.Schema do
  use Absinthe.Schema

  alias ServerWeb.Resolvers

  import_types(__MODULE__.PostsTypes)

  query do
    @desc "Get list of photos"

    field :photos, list_of(:photo) do
      resolve(&Resolvers.Posts.photos/3)
    end

    @desc "Get single photo via id"
    field :photo, :photo do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Posts.photo/3)
    end
  end
end
