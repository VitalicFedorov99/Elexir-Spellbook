import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :spellbookOne, SpellbookOne.Repo,
  username: "vitalic1",
  password: "qwedsazxc99",
  hostname: "localhost",
  database: "spellbookone_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :spellbookOne, SpellbookOneWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "gkMRDaOivdGTbqy6ZSAUuE/rol/Kv+oxiJQZbxjnHZnbgG0Pl2deJQ/9fnUvYoXR",
  server: false

# In test we don't send emails.
config :spellbookOne, SpellbookOne.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :spellbookOne, SpellbookOne.Accounts.Services.Guardian,
  secret_key: "HxdiegBPdfAM4StbEYdtcT7B2k/n/+eux1D6172e/eEdLBepO7QVTM76FFtGTKrp"
