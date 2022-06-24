defmodule SpellbookOne.Spells.Queries.ListSpells do

  import Ecto.Query, only: [from: 2]


  alias  SpellbookOne.Repo
  alias  SpellbookOne.Spells.Entities.Spell


  def process(params) do
    Spell
    |> with_rang(params)
    |> function_rang_min(params)
    |> with_name(params)
    |> with_time(params)
    |> select_fields()
    |> Repo.paginate(params)
  end


  defp with_rang(query, %{rang: nil}), do: query

  defp with_rang(query, %{rang: rang}) do

    from i in query,
    where: i.rang > ^rang
  end


  defp with_rang(query, _), do: query

  defp function_rang_min(query, %{min: nil}), do: query

  defp function_rang_min(query, _), do: query

  defp function_rang_min(query, %{min: min}) do
    IO.puts(min)
    from i in query,
    where: i.rang > ^min
  end

  defp with_time(query, _), do: query

  defp with_time(query, %{time: nil}), do: query

  defp with_time(query, %{time: time}) do
    from i in query,
    where: i.time > ^time
  end

  defp with_cost(query, _), do: query

  defp with_cost(query, %{cost: nil}), do: query

  defp with_cost(query, %{cost: cost}) do
    from i in query,
    where: i.cost > ^cost
  end

  defp with_name(query, %{name: name}) when is_binary(name) do
    name = "%" <> String.trim(name) <> "%"

    from i in query,
      where: ilike(i.name, ^name)
  end

  defp with_name(query, _), do: query

  defp select_fields(query) do
    from i in query,
      select: %{id: i.id, name: i.name, rang: i.rang, cost: i.cost, time: i.time}
  end

end
