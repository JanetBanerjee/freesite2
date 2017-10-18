@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name:"Snow")

puts "1 user created"

25.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff", user_id: @user.id, category: 1, ppu: "porch pick up", location: "wellington")
end

25.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff", user_id: @user.id, category: 2, ppu: "willing to deliver", location: "west medford")
end

puts "2 25 Posts have been created"
