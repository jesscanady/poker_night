Factory.define(:user) do |u|
  u.sequence(:name) { |n| "user#{n}" } 
  u.sequence(:email) { |n| "user#{n}@example.com" }
  u.password 'IH8PeterPan'
  u.password_confirmation 'IH8PeterPan'
end

Factory.define(:admin, :class => User) do |u|
  u.sequence(:name) { |n| "admin#{n}" } 
  u.sequence(:email) { |n| "admin#{n}@example.com" }
  u.password 'Winter:!:Mute'
  u.password_confirmation 'Winter:!:Mute'
end
