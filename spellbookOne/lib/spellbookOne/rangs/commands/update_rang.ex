defmodule SpellbookFedorov.Rangs.Commands.UpdateRang do
  alias SpellbookOne.Repo
  alias SpellbookOne.Rangs.Entities.Rang

  def process(%Rang{}=rang,attrs) do
    rang
    |>Rang.update_changeset(attrs)
    |>Repo.update()
  end

end
