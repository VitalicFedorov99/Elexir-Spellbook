defmodule  SpeelbookFedorov.Locations do
  alias SpellbookFedorov.Locations.Commands.
  {
    CreateLocation
  }

  alias SpellbookFedorov.Locations.Queries.
  {
    GetLocation
  }

  defdelegate create_location(attrs), to: CreateLocation, as: :process
  defdelegate get_location(id), to: GetLocations, as: :process
end
