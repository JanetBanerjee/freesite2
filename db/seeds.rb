@user1 = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name:"Snow")
@user2 = User.create(email: "bob@test.com", password: "booooob", password_confirmation: "booooob", first_name: "Bob", last_name:"Test")

puts "2 users created"

15.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff", user_id: @user1.id, category: 1, ppu: "porch pick up", location: "wellington")
end

15.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff", user_id: @user1.id, category: 2, ppu: "willing to deliver", location: "west medford")
end

15.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff", user_id: @user2.id, category: 1, ppu: "porch pick up", location: "wellington")
end

15.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff", user_id: @user2.id, category: 2, ppu: "willing to deliver", location: "west medford")
end
puts "4 25 Posts have been created"
