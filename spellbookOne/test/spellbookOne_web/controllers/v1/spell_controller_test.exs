defmodule SpellbookOneWeb.V1.SpellControllerTest do
  use SpellbookOneWeb.ConnCase

  import SpellbookOneWeb.Router.Helpers

  setup %{conn: conn} do
    # {:ok, %{conn: conn}}
    user = insert(:user)
    conn = as_user(conn, user)
    {:ok, %{conn: conn, user: user}}
  end

  test "index/2 returns list items", %{conn: conn} do
    [spell_1, spell_2, spell_3] = insert_list(3, :spell)

    response=
    conn
    |> get(spell_path(conn, :index))
    |> json_response(200)

    assert response ==
    [
      %{"id"=> spell_1.id, "name" => spell_1.name},
      %{"id"=> spell_2.id, "name" => spell_2.name},
      %{"id"=> spell_3.id, "name" => spell_3.name}
    ]
  end
end
