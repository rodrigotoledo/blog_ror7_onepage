10.times.each do
  Article.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
end