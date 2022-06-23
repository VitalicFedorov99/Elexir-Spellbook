defmodule SpellbookOne.Factories.Spells.SpellFactory do
  defmacro __using__(_opts) do
    quote do

      alias Faker.{Internet,Lorem,Person}
      alias SpellbookOne.Spells.Entities.Spell
      alias SpellbookOne.FakerForProject

      def spell_factory(attrs) do
       name = Map.get(attrs, :name, Lorem.sentence(5..10))
       description = Map.get(attrs, :description, Lorem.sentence(10..20))
       time = Map.get(attrs, :time, Enum.random(1..10))
       cost = Map.get(attrs, :cost, Enum.random(1..100))

       %Spell
       {
        #  name: sequence(:name, &"#{name}_#{&1}"),
         name: name,
         description: description,
         time: time,
         cost: cost

       }
      end
    end
  end
end
