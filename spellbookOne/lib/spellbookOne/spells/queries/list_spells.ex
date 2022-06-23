defmodule SpellbookOne.Spells.Queries.ListSpells do

  import Ecto.Query, only: [from: 2]


  alias  SpellbookOne.Repo
  alias  SpellbookOne.Spells.Entities.Spell

  def process(params) do
    Spell
    |> with_level(params)
    |> with_name(params)
    |> select_fields()
    |> Repo.all()
  end


  defp with_level(query, %{level: nil}), do: query

  defp with_level(query, %{level: level}) do
    from i in query,
    where: i.level > ^level
  end

  defp with_level(query, _), do: query

  defp with_name(query, %{name: name}) when is_binary(name) do
    name = "%" <> String.trim(name) <> "%"

    from i in query,
      where: ilike(i.name, ^name)
  end

  defp with_name(query, _), do: query

  defp select_fields(query) do
    from i in query,
      select: %{id: i.id, name: i.name}
  end

end
