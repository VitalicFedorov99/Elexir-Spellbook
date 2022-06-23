defmodule SpellbookOne.Spells.Queries.GetSpell do

  import Ecto.Query,  only: [from: 2]
  alias  SpellbookOne.Repo
  alias  SpellbookOne.Spells.Entities.Spell

    def process(id) do
      # Repo.find(Spell, id)
      Spell
      |> by_id(id)
      |> Repo.fetch_one()
    end

    defp by_id(query, id ) do
      from spell in query,
        where: spell.id == ^id
    end


end
