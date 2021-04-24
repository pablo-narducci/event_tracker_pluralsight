use Mix.Config

# Configure your database
config :rsvp, Rsvp.Repo,
  username: "postgres",
  password: "str0ng",
  database: "rsvp",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
