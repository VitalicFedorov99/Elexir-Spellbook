defmodule SpellbookOne.Locations.Commands.CreateLocation do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Locations.Entities.Location

  def process(attrs) do
    %Location{}
    |> Location.create_changeset(attrs)
    |> Repo.insert()
  end
end
