puts 'Creating Roles'
Role.create([
  { :name => 'admin' },
  { :name => 'user' },
  { :name => 'VIP' }
], :without_protection => true)

puts 'Setting Up Default User Login'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New User Created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New User Created' << user2.name
user.add_role :admin
user2.add_role :VIP
