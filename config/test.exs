use Mix.Config

config :rsvp, Rsvp.Repo,
  username: "postgres",
  password: "str0ng",
  database: "rsvp",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rsvp_web, RsvpWebWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
