defmodule RspvWebWeb.EventViewTest do
  use RsvpWebWeb.ConnCase, async: true

  @tag current: true
  test "Should format the date" do
    {_, date, _} = DateTime.from_iso8601("2021-04-26 12:13:14Z")
    formatted = RsvpWebWeb.EventView.format_date(date)
    assert formatted == "26/4/2021 at 12:13"
  end

end
