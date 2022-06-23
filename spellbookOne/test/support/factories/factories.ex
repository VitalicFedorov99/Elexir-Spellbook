defmodule SpellbookOne.Factories do
  use ExMachina.Ecto, repo: SpellbookOne.Repo

  use SpellbookOne.Factories.{
    Accounts.UserFactory,
    Spellbooks.SpellbookFactory,
    Spells.SpellFactory
  }
end
