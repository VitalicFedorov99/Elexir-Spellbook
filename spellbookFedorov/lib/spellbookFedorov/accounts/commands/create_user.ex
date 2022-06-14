defmodule SpellbookFedorov.Accounts.Commands.CreateUser do

  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.User

  def process(attrs) do
    %User{}
    |>User.create_changeset(attrs)
    |>Repo.insert()
  end

end
