defmodule Scaffolding.App.Lines do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scaffolding.App.Lines


  schema "lines" do
    field :amount, :integer
    field :description, :string
    field :line_id, Ecto.UUID
    field :invoice_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Lines{} = lines, attrs) do
    lines
    |> cast(attrs, [:line_id, :description, :amount])
    |> validate_required([:line_id, :description, :amount])
  end
end
