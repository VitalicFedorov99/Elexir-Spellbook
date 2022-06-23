defmodule SpellbookOneWeb.V1.SpellbookView do
  use SpellbookOneWeb, :view

  # def render("index.json", %{spellbooks: spellbooks}) do
      # render_many(spellbooks, __MODULE__, "show.json", as: :spellbook)
  # end

  def render("index.json", %{page: page}) do
    %{
      entries: render_many(page.entries, __MODULE__, "show.json", as: :spellbook),
      page_number: page.page_number,
      page_size: page.page_size,
      total_entries: page.total_entries,
      total_pages: page.total_pages
    }
  end


  def render("show.json", %{spellbook: spellbook}) do
    %{
      id: spellbook.id,
      name_spellbook: spellbook.name_spellbook
    }
  end
end
