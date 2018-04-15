defmodule Scaffolding.ClientsController do
  use Scaffolding.Web, :controller

  def index(conn, _params) do
    #    render conn, "index.html"
    clients = Scaffolding.Repo.all(Scaffolding.Client) 
    json conn, clients
  end

end
