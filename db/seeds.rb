
user = User.find_by(email: 'a@a')

if user.blank?
  user = User.find_or_create_by(email: 'a@a', password: 'aaaaa')
end

10.times do
  user.posts.create(content: Faker::Lorem.sentence(word_count: [*50..200].sample))
end
