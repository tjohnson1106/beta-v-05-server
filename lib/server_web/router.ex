defmodule ServerWeb.Router do
  use ServerWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
    plug(ServerWeb.Context)
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, schema: ServerWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: ServerWeb.Schema)
    end
  end
end
