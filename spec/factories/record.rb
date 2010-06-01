Factory.define(:record) do |r|
  r.night {|a| a.association(:night)}
  r.user {|a| a.association(:user)}
  r.buyin 10
end