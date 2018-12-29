defmodule Support.ExampleController do
  use Conductor
  use Phoenix.Controller

  def show(conn, _params) do
    conn |> send_resp(200, "")
  end

  @authorize scope: "create"
  def create(conn, _params) do
    conn |> send_resp(201, "")
  end

  @authorize scopes: ["update1", "update2"]
  def update(conn, _params) do
    conn |> send_resp(200, "")
  end

  @authorize scope: {"update1", "admin"}
  def update_all(conn, _params) do
    conn |> send_resp(200, "")
  end

  def delete(conn, _params) do
    conn |> send_resp(200, "")
  end
end
