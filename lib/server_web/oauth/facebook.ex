defmodule ServerWeb.Oauth.Facebook do
  @fields "id,email,first_name,last_name"

  def get_info(token) do
    token
    |> get_user
  end

  defp get_user(token) do
    {:ok, user} = Facebook.me([fields: @fields], token)
    user
  end
end
