defmodule SpellbookFedorov.Locations.Queries.GetLocation do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Locations.Entities.Location

  def process(id) do
    Repo.find(Location, id)
  end
end
