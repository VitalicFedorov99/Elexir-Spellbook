defmodule SpellbookOne.Rangs do
  alias SpellbookOne.Rangs.Commands.
  {
    CreateRang,
    UpdateRang,
    DeleteRang
  }

  alias SpellbookOne.Rangs.Queries.
  {
    GetRang,
    ListRangs
  }

  defdelegate create_rang(attrs), to: CreateRang, as: :process
  defdelegate update_rang(rang,attrs), to: UpdateRang, as: :process
  defdelegate delete_rang(rang), to: DeleteRang, as: :process

  defdelegate get_rang(id), to: GetRang, as: :process
  defdelegate list_rangs(), to: ListRangs, as: :process
end
