defmodule RsvpWebWeb.EventView do
  use RsvpWebWeb, :view

  def format_date(date) do
    "#{date.day}/#{date.month}/#{date.year} at #{date.hour}:#{date.minute}"
  end
end
