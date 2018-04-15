defmodule Scaffolding.Repo.Migrations.InsertDummyRecords do
  use Ecto.Migration

  def change do

    client = %Scaffolding.App.Client{name: "A Company", contact_person: "Someone"}
    Scaffolding.Repo.insert(client)
  end
end
