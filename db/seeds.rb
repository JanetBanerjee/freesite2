100.times do |post|
  Post.create!(date: Date.today, item: "#{post} item stuff")
end

puts "100 Posts have been created"
