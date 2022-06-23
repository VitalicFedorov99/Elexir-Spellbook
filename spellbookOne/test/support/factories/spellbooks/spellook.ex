defmodule SpellbookOne.Factories.Spellbooks.SpellbookFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person, Pokemon}
      alias SpellbookOne.Spellbooks.Entities.Spellbook
      # alias SpellbookOne.FakerForProject

      def spellbook_factory(attrs) do

        name = Map.get(attrs,:name_spellbook, Pokemon.name())
        count_spell = Map.get(attrs, :count_spell, Enum.random(1..20))
        user= Map.get(attrs,:user,insert(:user))
        IO.puts(name)
        %Spellbook
        {
          count_spell: count_spell,
          name_spellbook: name,
          user: user
          # user: build(:user)
        }
      end
    end
  end
end
