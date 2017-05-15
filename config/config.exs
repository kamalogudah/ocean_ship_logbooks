# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ocean_ship_logbooks,
  ecto_repos: [OceanShipLogbooks.Repo]

# Configures the endpoint
config :ocean_ship_logbooks, OceanShipLogbooks.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zZJuNIxf9CNxCV71l0dAkoH83rpC0rHFWIWA2JqV/xDnwXWTXja27yzQLKjMi+ce",
  render_errors: [view: OceanShipLogbooks.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OceanShipLogbooks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
