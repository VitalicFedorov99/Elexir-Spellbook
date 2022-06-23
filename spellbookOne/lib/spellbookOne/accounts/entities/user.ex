defmodule SpellbookOne.Accounts.Entities.User do

  use Ecto.Schema

  import Ecto.Changeset

  @required [:email, :password]

  schema "users" do
    field :email, EmailEctoType
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

# #  @fictional_email ["vitalic@mail.ru","test25@mail.ru","test30@mail.ru"]
#   # @spec validate_fictional_email(Ecto.Changeset.t()) :: Ecto.Changeset.t()
#   def validate_fictional_email(changeset) do
#     email=get_field(changeset, :email)

#     if email== "test25@mail.ru" do
#       changeset
#     else
#       add_error(changeset,:email,"is not a emailFictional")
#     end

#   end
  def changeset(struct,params) do
    struct
    |>cast(params,[:email,:password_hash])
    |>validate_required([:email])
    # |>validate_length()
    # |>validate_fictional_email()
  end


  def test()do
    IO.puts("test")
  end
  def create_changeset(struct, attrs) do
    struct
    |> cast(attrs,@required)
    |> validate_required(@required)
    |> unique_constraint(:email,message: "taken")
    > validate_format(:password,
     ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{6,}/,
     message: "invalid_format")
    |> put_password_hash()
    end

    def update_changeset(%__MODULE__{}=user, attrs) do
      user
      |> cast(attrs,@required)
      |> validate_required(@required)
      |> unique_constraint(:email,message: "taken")
      |> validate_format(:password,
       ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/,
       message: "invalid_format")
      |> put_password_hash()
    end


  defp put_password_hash(%{valid?: true,
  changes: %{password: password}}
   = changeset) do
    change(changeset,Argon2.add_hash(password))
   end

   defp put_password_hash(changeset), do: changeset
end
