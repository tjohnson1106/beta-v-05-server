# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :server,
  ecto_repos: [Server.Repo]

# Configures the endpoint
config :server, ServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fwFtC/SirHlWrT62aP2DjkTQbF7w+iwd8vtU/WeK29eoP6y4Uws04e1f6G/wojt0",
  render_errors: [view: ServerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Server.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Configures Guardian
config :server, ServerWeb.Auth.Guardian,
  issuer: "server",
  verify_issuer: true,
  secret_key: "l6r8QIPGWcSmg0OTqEEoD53LVOqLCvMRy8p29KB3ilULb73fmBV6/hfjAHVKJn4u"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
