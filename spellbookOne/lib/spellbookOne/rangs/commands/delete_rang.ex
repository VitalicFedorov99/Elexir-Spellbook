defmodule SpellbookOne.Locations.Commands.DeleteRang do
  alias SpellbookOne.Repo
  alias SpellbookOne.Rangs.Entities.Rang

  def process(%Rang{} = rang) do
    Repo.delete(rang)
  end

end
