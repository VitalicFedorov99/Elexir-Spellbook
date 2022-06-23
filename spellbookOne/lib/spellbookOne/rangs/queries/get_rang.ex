defmodule SpellbookOne.Rangs.Queries.GetRang do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Rangs.Entities.Rang

  def process(id) do
    Repo.find(Rang, id)
  end
end
