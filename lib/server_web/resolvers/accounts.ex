defmodule ServerWeb.Resolver.Accounts do
  # provider for conditional login services
  def login(_, %{token: token, provider: provider}, _) do
    case provider do
      :facebook ->
        {:ok, user} = ServerWeb.Authentication.login(token, "facebook")
    end
  end
end
