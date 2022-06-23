defmodule SpellbookOne.Rangs.Commands.CreateRang do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Rangs.Entities.Rang

  def process(attrs) do
    %Rang{}
    |> Rang.create_changeset(attrs)
    |> Repo.insert()
  end
end
