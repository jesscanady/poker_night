Factory.define(:night) do |n|
  n.when { Time.now }
  n.active false
end