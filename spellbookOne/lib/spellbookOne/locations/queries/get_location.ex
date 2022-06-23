defmodule SpellbookOne.Locations.Queries.GetLocation do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Locations.Entities.Location

  def process(id) do
    Repo.find(Location, id)
  end
end
