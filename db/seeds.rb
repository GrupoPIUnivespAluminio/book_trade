p 'seeding'

5.times do 
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

1.times do 
  User.create(
    email: 'test@test.com',
    password: '123456'
  )
end

30.times do
  Book.create(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    author: Faker::Book.author,
    user_id: User.all.sample.id
  )
end

p 'done'