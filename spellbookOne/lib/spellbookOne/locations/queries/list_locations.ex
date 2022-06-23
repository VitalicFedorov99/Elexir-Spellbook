defmodule  SpellbookOne.Locations.Queries.ListLocations do
  alias SpellbookOne.Repo
  alias SpellbookOne.Locations.Entities.Location

  def process() do
    Repo.all(Location)
  end

end
