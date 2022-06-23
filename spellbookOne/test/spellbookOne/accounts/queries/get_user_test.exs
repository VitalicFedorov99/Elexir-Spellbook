defmodule SpellbookOne.Accounts.Queries.GetUserTest do
  use SpellbookOne.DataCase

  alias SpellbookOne.Accounts

  test "process/1 get user by id" do
    user=insert(:user)
    Accounts.get_user(user.id)
    assert {:ok,result} = Accounts.get_user(user.id)
    assert user.id == result.id
  end

end
