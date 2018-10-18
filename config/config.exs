# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config


config :distro,
  ecto_repos: [Distro.Repo]

# Configures the endpoint
config :distro, DistroWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kzGYNi7c1MKXg3Nmb57a8LbUoI4uZSFmX+TxiMyaUmd6eRv8o+QJ0rhkXZgyGuHx",
  render_errors: [view: DistroWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Distro.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :distro,
  title: "Welcome to Phoenix running on Development"

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
