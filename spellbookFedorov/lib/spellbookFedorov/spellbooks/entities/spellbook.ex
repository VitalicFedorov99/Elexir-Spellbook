defmodule SpellbookFedorov.Spellbooks.Entities.Spellbook do
  use Ecto.Schema

  import Ecto.Changeset

  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.User
  alias SpellbookFedorov.Spells.Entities.Spell

  @required [

    :count_spell,
    :name_spellbook,
    # :spells,
    :user_id
  ]

  schema "spellbook" do
    field :count_spell, :integer
    field :name_spellbook, :string
    # field :spells, :map
    belongs_to :user, User

    many_to_many :spells, Spell, join_through: "spellbooks_spells"

    timestamps()
  end


  def create_changeset(%__MODULE__{}=spellbook, attrs) do
    spellbook
    |>Repo.preload(:spells)
    |>cast(attrs,@required)
    |>validate_required(@required)
    |>validate_number(:count_spell, less_then_or_equal_to: 20)
    |>assoc_constraint(:user)
    |>unique_constraint(:name_spellbook)

     # Set the association
     |> put_assoc(:items, [attrs.spells])

  end

end
