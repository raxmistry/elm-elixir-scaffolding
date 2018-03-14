defmodule Scaffolding.App.Client do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scaffolding.App.Client


  schema "clients" do
    field :client_id, Ecto.UUID
    field :contact_person, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Client{} = client, attrs) do
    client
    |> cast(attrs, [:client_id, :name, :contact_person])
    |> validate_required([:client_id, :name, :contact_person])
  end
end
