defmodule SpellbookFedorov.Spells.Commands.CreateSpell do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Spells.Entities.Spell
  # alias SpellbookFedorov.Schools

  def process(attrs, id) do
    # %School{}
    #  Spell.create_changeset(%Spell{},attrs)
    # |> Repo.insert()
     spell=Spell.create_changeset(%Spell{},attrs)
     case spell.valid? do
      true ->
          {a,school}=SpellbookFedorov.Schools.get_school(id)
          spell1 = Ecto.build_assoc(school,:spells,attrs)
          # spell1
          Repo.insert!(spell1)

      false -> spell.valid?
     end

    #  spell=Spell.create_changeset(%Spell{},spell)
    #  spell
    #  Repo.insert(spell)
  end
end
