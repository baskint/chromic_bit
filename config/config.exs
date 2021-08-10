# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chromic_bit,
  ecto_repos: [ChromicBit.Repo]

# Configures the endpoint
config :chromic_bit, ChromicBitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "G7i7rjPHef+Xx2W8zeDJ/G8gRx4ys+zgOB7jP+RX3LfFCxRXlefvGnFXLXo0m3Qi",
  render_errors: [view: ChromicBitWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChromicBit.PubSub,
  live_view: [signing_salt: "ZWAjn5U9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
