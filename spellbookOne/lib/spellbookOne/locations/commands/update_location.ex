defmodule SpellbookOne.Locations.Commands.UpdateLocation do
  alias SpellbookOne.Repo
  alias SpellbookOne.Locations.Entities.Location

  def process(%Location{}=location,attrs) do
    location
    |>Location.update_changeset(attrs)
    |>Repo.update()
  end

end
