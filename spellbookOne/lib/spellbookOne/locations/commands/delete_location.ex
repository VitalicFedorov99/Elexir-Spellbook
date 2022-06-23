defmodule SpellbookOne.Locations.Commands.DeleteLocation do
  alias SpellbookOne.Repo
  alias SpellbookOne.Locations.Entities.Location

  def process(%Location{} = location) do
    Repo.delete(location)
  end

end
