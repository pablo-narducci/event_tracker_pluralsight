defmodule RsvpWebWeb.AuthorizedPlug do
  import Plug.Conn
  import Phoenix.Controller

  def init(opts) do
    opts
  end

  def call(conn, valid_name) do
    user_name = conn.cookies["user_name"]

    authorize_user(conn, user_name, valid_name)
  end

  defp authorize_user(conn, :nil, _) do
    conn
    |> redirect(to: "/login")
    |> halt
  end

  defp authorize_user(conn, user_name, name) when name === user_name do
    conn
  end

  defp authorize_user(conn, _, _), do: authorize_user(conn, :nil, :nil)

end
