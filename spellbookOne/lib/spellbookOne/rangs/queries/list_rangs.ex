defmodule  SpellbookOne.Rangs.Queries.ListRangs do
  alias SpellbookOne.Repo
  alias SpellbookOne.Rangs.Entities.Rang

  def process() do
    Repo.all(Rang)
  end

end
