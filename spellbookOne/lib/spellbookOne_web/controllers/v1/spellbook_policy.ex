defmodule SpellbookOneWeb.V1.SpellbookPolicy do
  @behabiour Bodygueard.Policy

  alias SpellbookOne.Accounts.Entities.User
  alias SpellbookOne.Spellbooks.Entities.Spellbook

  def authorize(action, %User{id: id}, %Spellbook{user_id: id})
    when action in [:show, :update],
    do: :ok

  def authorize(_action,_user,_params), do: false
end
