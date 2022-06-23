defmodule  SpellbookOne.Locations do
  alias SpellbookOne.Locations.Commands.
  {
    CreateLocation,
    UpdateLocation,
    DeleteLocation
  }

  alias SpellbookOne.Locations.Queries.
  {
    GetLocation,
    ListLocations
  }

  defdelegate create_location(attrs), to: CreateLocation, as: :process
  defdelegate update_location(location,attrs), to: UpdateLocation, as: :process
  defdelegate delete_location(location), to: DeleteLocation, as: :process

  defdelegate get_location(id), to: GetLocation, as: :process
  defdelegate list_locations(), to: ListLocations, as: :process
end
