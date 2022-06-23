defmodule SpellbookOneWeb.V1.SpellView do
  use SpellbookOneWeb, :view

  def render("index.json", %{spells: spells}) do
    render_many(spells, __MODULE__ , "show.json", as: :spell)
  end

  def render("show.json", %{spell: spell}) do
    %{
     id: spell.id,
     name: spell.name
    }
  end
end
