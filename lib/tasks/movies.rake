namespace :populate do
  desc 'Popula o banco de dados com filmes utilizando Faker'
  task movies: :environment do
    10.times do
      Movie.create(
        title: Faker::Movie.title,
        director: Faker::Name.name,
        release_date: Faker::Date.between(from: '1900-01-01', to: Date.today)
      )
    end

    puts 'Banco de dados populado com filmes usando Faker!'
  end

  desc 'Popula o banco de dados com usuários utilizando Faker'
  task users: :environment do
    10.times do
      User.create(
        email: Faker::Internet.email,
        # password: Faker::Internet.password(min_length: 8)
        password: '12345678'
      )
    end

    puts 'Banco de dados populado com usuários usando Faker!'
  end
end
