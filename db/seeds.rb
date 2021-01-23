# frozen_string_literal: true

user = User.find_by(email: 'a@a')

user = User.create(email: 'a@a', password: 'aaaaaa') if user.blank?

10.times do
  user.posts.create(content: Faker::Lorem.sentence(word_count: [*50..200].sample))
end
