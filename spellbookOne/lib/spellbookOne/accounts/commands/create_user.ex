defmodule SpellbookOne.Accounts.Commands.CreateUser do

  alias SpellbookOne.Repo
  alias SpellbookOne.Accounts.Entities.User

  def process(attrs) do
    %User{}
    |>User.create_changeset(attrs)
    |>Repo.insert()
  end

end
