defmodule SpellbookOne.Spells.Queries.ListSpells do

  import Ecto.Query, only: [from: 2]


  alias  SpellbookOne.Repo
  alias  SpellbookOne.Spells.Entities.Spell

  def process(params) do
    Spell
    |> with_rang(params)
    |> with_name(params)
    |> select_fields()
    |> Repo.all()
  end


  defp with_rang(query, %{rang_id: nil}), do: query

  defp with_rang(query, %{rang_id: rang_id}) do
    from i in query,
    where: i.rang_id > ^rang_id
  end

  defp with_rang(query, _), do: query

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
