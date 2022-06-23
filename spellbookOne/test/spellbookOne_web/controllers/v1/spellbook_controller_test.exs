defmodule SpellbookOneWeb.V1.SpellbookControllerTest do
  use SpellbookOneWeb.ConnCase

  import SpellbookOneWeb.Router.Helpers

  setup %{conn: conn} do
    user = insert(:user)
    conn = as_user(conn, user)
    {:ok, %{conn: conn, user: user}}
    # conn = assign(conn, :current_user, user)
    # {:ok, %{conn: conn}}
  end

  # test "index/2 returns list spellbooks", %{conn: conn} do
    # [spellbook_1, spellbook_2, spellbook_3] =
      # insert_list(3, :spellbook, %{yser: conn.assigns.current_user})
      test "index/2 returns list spellbooks", %{conn: conn, user: user} do
        [spellbook_1, spellbook_2, spellbook_3] = insert_list(3, :spellbook, %{user: user})
        attrs = %{page: 1, page_size: 5}


      response=
      conn
      |> get(spellbook_path(conn, :index))
      |> json_response (200)

      assert response ==
            # [
              # %("id"=>spellbook_1.id, "name_spellbook"=> spellbook_1.name_spellbook),
              # %("id"=>spellbook_2.id, "name_spellbook"=> spellbook_2.name_spellbook),
              # %("id"=>spellbook_3.id, "name_spellbook"=> spellbook_3.name_spellbook),
            # ]
            %{
              "entries" => [
                %{"id" => spellbook_1.id, "nickname" => spellbook_1.nickname},
                %{"id" => spellbook_2.id, "nickname" => spellbook_2.nickname},
                %{"id" => spellbook_3.id, "nickname" => spellbook_3.nickname}
              ],
              "page_number" => 1,
              "page_size" => 5,
              "total_entries" => 3,
              "total_pages" => 1
            }
    end


    # test "show/2 returns list spellbooks", %{conn: conn} do
      # spellbook = insert(:spellbook, %{user: conn.assigns.current_user})
      test "show/2 returns list spellbook", %{conn: conn, user: user} do
       spellbook = insert(:spellbook, %{user: user})

      response =
      conn
      |>get(spellbook_path(conn, :show, spellbook.id))
      |>json_response(200)

      assert response == %{"id" => spellbook.id, "name_spellbook" => spellbook.name_spellbook}
    end
end
