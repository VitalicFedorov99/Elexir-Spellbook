defmodule SpellbookOne.Spells.Commands.DeleteSpellTest do

  use SpellbookOne.DataCase

  alias SpellbookOne.Spells

  test "process/1 delete_user test" do
    spell= insert(:spell)
    assert {:ok, _result}= Spells.delete_spell(spell)
    assert {:error, :not_found} = Spells.get_spell(spell.id)
  end
end
