defmodule Users.Account.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :email, :string
    field :last_name, :string
    field :first_name, :string
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :last_name, :first_name])
    |> validate_required([:email, :last_name, :first_name])
    |> unique_constraint(:email)
  end
end
