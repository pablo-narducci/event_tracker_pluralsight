# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

# Configures the endpoint
config :rsvp_web, RsvpWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4VWCOm2mVEkBpF8tXRYACDQ3c71U1K1+N5FZ6RXrSmiGMDh6ua6VnVGkVA2lsTrf",
  render_errors: [view: RsvpWebWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RsvpWeb.PubSub,
  live_view: [signing_salt: "0MwJLjy8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :rsvp, ecto_repos: [Rsvp.Repo]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
