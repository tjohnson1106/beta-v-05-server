defmodule ServerWeb.Resolvers.Accounts do
  alias ServerWeb.{Authentication, Auth}

  # provider for conditional login services
  def login(_, %{token: token, provider: provider}, _) do
    case provider do
      :facebook ->
        {:ok, user} = Authentication.login(token, "facebook")

        {:ok, token, _} = Auth.Guardian.encode_and_sign(user)

        {:ok, %{token: token}}
    end
  end
end
