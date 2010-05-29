require 'digest/md5'

Facrory.define(:user) do |u|
  u.name 'Captain Hook'
  u.email 'hook@neverland.org'
  u.password { Digest::MD5.hexdigest('IH8PeterPan') } 
end

Factory.define(:admin, :class => User) do |u|
  u.name 'Henry Case'
  u.email 'case@neuromancer.biz'
  u.password { Digest::MD5.hexdigest('Winter:!:Mute') }
end
