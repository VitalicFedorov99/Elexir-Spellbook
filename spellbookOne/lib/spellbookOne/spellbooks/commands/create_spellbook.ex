defmodule SpellbookOne.Spellbooks.Commands.CreateSpellbook do

  alias SpellbookOne.Repo
  alias SpellbookOne.Spellbooks.Entities.Spellbook

  def process(attrs) do
    %Spellbook{}
     |> Spellbook.create_changeset(attrs)
     |> Repo.insert()
  end

end
