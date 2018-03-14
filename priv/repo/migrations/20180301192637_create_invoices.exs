defmodule Scaffolding.Repo.Migrations.CreateInvoices do
  use Ecto.Migration

  def change do
    create table(:invoices) do
      add :invoice_id, :uuid
      add :description, :string
      add :total, :integer

      timestamps()
    end

  end
end
