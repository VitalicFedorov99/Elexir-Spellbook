defmodule SpellbookOne.Spells.Commands.CreateSpell do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Spells.Entities.Spell

  def process(attrs) do
     spell=Spell.create_changeset(%Spell{},attrs)
     Repo.insert(spell)
    #  case spell.valid? do
      # true ->
          # {a,school}=SpellbookFedorov.Schools.get_school(id)
          # spell1 = Ecto.build_assoc(school,:spells,attrs)
          # spell1
          # Repo.insert!(spell1)

      # false -> spell.valid?
     end
  end
