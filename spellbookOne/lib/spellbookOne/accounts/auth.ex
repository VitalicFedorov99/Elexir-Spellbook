defmodule SpellbookOne.Accounts.Auth do
  alias SpellbookOne.Accounts.Entities.User
  alias SpellbookOne.Accounts.Services.Guardian

  def sign_user(%User{} = user), do: Guardian.sign(user)
end
