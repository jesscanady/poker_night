Factory.define(:game) do |g|
  g.night {|a| a.association(:night)}
  g.user {|a| a.association(:user)}
  g.buyin 10
end