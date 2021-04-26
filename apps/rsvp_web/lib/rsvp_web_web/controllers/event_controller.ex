defmodule RsvpWebWeb.EventController do
  use RsvpWebWeb, :controller

  def show(conn, params) do
    render conn, "details.html", event: "Events #{params["id"]}"
  end
end
