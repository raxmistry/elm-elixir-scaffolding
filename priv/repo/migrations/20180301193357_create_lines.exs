defmodule Scaffolding.Repo.Migrations.CreateLines do
  use Ecto.Migration

  def change do
    create table(:lines) do
      add :line_id, :uuid
      add :description, :string
      add :amount, :integer
      add :invoice_id, references(:invoices, on_delete: :nothing)

      timestamps()
    end

    create index(:lines, [:invoice_id])
  end
end
