defmodule Scaffolding.App.Invoice do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scaffolding.App.Invoice


  schema "invoices" do
    field :description, :string
    field :invoice_id, Ecto.UUID
    field :total, :integer

    timestamps()
  end

  @doc false
  def changeset(%Invoice{} = invoice, attrs) do
    invoice
    |> cast(attrs, [:invoice_id, :description, :total])
    |> validate_required([:invoice_id, :description, :total])
  end
end
