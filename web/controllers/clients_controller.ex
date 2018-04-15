defmodule Scaffolding.ClientsController do
  use Scaffolding.Web, :controller

  def index(conn, _params) do
    #    render conn, "index.html"
    clients = Scaffolding.App.Client |> Scaffolding.Repo.all() 
    converted = Enum.map(clients, fn x -> %Scaffolding.Client{client_id: x.client_id, name: x.name, contact_person: x.contact_person} end )
    IO.inspect(converted)
    noclients = []
    json conn, converted 
  end

end
