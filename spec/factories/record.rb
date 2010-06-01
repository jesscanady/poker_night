Factory.define(:record) do |r|
  r.association :game
  r.association :user
  r.buyin 10
end