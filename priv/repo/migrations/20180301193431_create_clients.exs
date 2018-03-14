defmodule Scaffolding.Repo.Migrations.CreateClients do
  use Ecto.Migration

  def change do
    create table(:clients) do
      add :client_id, :uuid
      add :name, :string
      add :contact_person, :string

      timestamps()
    end

  end
end
