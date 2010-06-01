Factory.define(:game) do |g|
  g.when { Time.now }
  g.active false
end