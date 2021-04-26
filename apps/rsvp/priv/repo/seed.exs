unless(Rsvp.EventQueries.any)  do
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2021-12-12 21:00:00", title: "Test 1", location: "Somewhere 1"}))
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2021-12-22 22:00:00", title: "Test 2", location: "Someplace 2"}))
end
