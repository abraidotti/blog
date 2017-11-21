guest = User.create(email: 'guest@guest.com', password: '123456', name: 'guest')
sandy =  User.create(email: 'sandy@sandy.com', password: '123456', name: 'sandy')

5.times do
  Article.create(
    title: Faker::Dessert.variety,
    text: 'test test sandy test',
    user_id: sandy.id
    )
end

5.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456',
    name: Faker::Name.name
    )
    5.times do
      article = Article.create(
        title: Faker::Food.dish,
        text: Faker::RickAndMorty.quote,
        user_id: user.id
        )
        3.times do
          comment = Comment.create(
          body: Faker::Hipster.sentence,
          article_id: article.id,
          user_id: user.id
          )
        end
    end
end
