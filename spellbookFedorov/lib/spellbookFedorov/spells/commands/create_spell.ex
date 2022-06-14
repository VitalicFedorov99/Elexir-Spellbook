defmodule SpellbookFedorov.Spells.Commands.CreateSpell do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Spells.Entities.Spell

  def process(attrs) do
    %Spell{}
    |> Spell.create_changeset(attrs)
    |> Repo.insert()
  end
end
