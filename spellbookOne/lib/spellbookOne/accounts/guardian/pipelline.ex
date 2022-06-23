defmodule SpellbookOne.Accounts.Guardian.Pipeline do
  use Guardian.Plug.Pipeline,
  # otp_app: :oz_api,
  otp_app: :spellbookOne,
  error_handler: SpellbookOne.Accounts.Guardian.ErrorHandler,
  module: SpellbookOne.Accounts.Services.Guardian

  plug Guardian.Plug.VerifyHeader, claims: %{"typ"=>"access"}

  # Load the user if either of the verifications worked
  plug Guardian.Plug.LoadResource, allow_blank: true
end
