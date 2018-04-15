defmodule Scaffolding.Repo.Migrations.InsertMoreDummyRecords do
  use Ecto.Migration

  def change do
    clients = [
      %Scaffolding.App.Client{name: "Company B", contact_person: "Someone Else"},
      %Scaffolding.App.Client{name: "Acme", contact_person: "W.E.Fox"} 
    ]

    clients
    |> Enum.map(fn client -> Scaffolding.Repo.insert(client)
 end)
      end
end
