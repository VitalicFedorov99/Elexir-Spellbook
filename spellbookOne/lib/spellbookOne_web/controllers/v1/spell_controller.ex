defmodule SpellbookOneWeb.V1.SpellController do
  use SpellbookOneWeb, :controller

  alias SpellbookOne.Spells

  action_fallback(SpellbookOneWeb.FallbackController)

  def index(conn, %{"current_user" => current_user} = _params) do
    spells = Spells.list_spells(_params)
    render(conn,"index.json",%{spells: spells})
  end

  def show(conn, %{"current_user" => _current_user, "id" => id}) do
    with{:ok, spell}<- Spells.get_spell(id) do
      render(conn, "show.json", %{spell: spell})
    end
  end
end
