defmodule  SpellbookOne.Spellbooks.Queries.ListSpellbooks do
  import Ecto.Query, only: [from: 2]

  alias SpellbookOne.Repo
  alias SpellbookOne.Spellbooks.Entities.Spellbook

  def process(user, params) do
    Spellbook
    |>by_user(user.id)
    |> Repo.paginate(params)
    # |>Repo.all()
  end


  defp by_user(query, user_id) do
    from spellbook in query,
      where: spellbook.user_id == ^user_id
  end




  # def process() do
    # Repo.all(Spellbook)
  # end

end
