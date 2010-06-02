Factory.define(:game) do |g|
  g.scheduled_for { Time.now }
  g.active false
end