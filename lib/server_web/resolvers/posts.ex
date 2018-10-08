defmodule ServerWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, Server.Posts.list_photos()}
  end
end
