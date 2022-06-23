defmodule SpellbookOneWeb.V1.SpellbookController do
  use SpellbookOneWeb, :controller

  alias SpellbookOne.Spellbooks
  alias SpellbookOneWeb.V1.SpellbookPolicy

  action_fallback(SpellbookOneWeb.FallbackController)

  defmodule IndexSearchParams do
    use Params.Schema, %{
      name_spellbook: :string,
      count_spell: :integer,
      page!: :integer,
      page_size!: :integer
    }
  end

  # def index(conn, params) do

    # user =conn.assigns.current_user
    # spellbooks= Spellbooks.list_spellbooks(user, params)
    # render(conn, "index.json", %{spellbooks: spellbooks})
  # end

  def index(conn, %{"current_user" => current_user} = params) do
    with {:ok, params} <- ApplyParams.do_apply(IndexSearchParams, params) do
      # spellbooks = Spellbooks.list_spellbooks(current_user, params)
      # render(conn, "index.json", %{spellbooks: spellbooks})
      page = Spellbooks.list_spellbooks(current_user, params)
      render(conn, "index.json", %{page: page})
    end
  end

  def show(conn, %{"current_user" => current_user, "id" => id}) do
    user = conn.assigns.current_user
    Spellbooks.get_spellbook(id)
    with {:ok, spellbook} <- Spellbooks.get_spellbook(id),
    :ok <- Bodyguard.permit(SpellbookPolicy, :show, current_user, spellbook) do
      render(conn,"show.json", %{spellbook: spellbook})
    end


  end
end
