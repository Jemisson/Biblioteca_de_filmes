namespace :db do
  desc 'Popula o banco de dados com filmes'
  task populate_movies: :environment do
    movies = [
      { title: 'Inception', director: 'Cristopher Nolan', release_date: '2010-07-16' },
      { title: 'The Matrix', director: 'Lana Wachowski, Lili Wachowski', release_date: '1999-03-31' },
      { title: 'Interestellar', director: 'Francis Ford Coppola', release_date: '2014-11-07' },
      { title: 'The Godfather', director: 'Cristopher Nolan', release_date: '1972-03-24' },
      { title: 'Pulp Fiction', director: 'Quentin Tarantino', release_date: '1994-10-14' },
    ]

    movies.each do |movie|
      Movie.create(movie)
    end

    puts 'Banco de dados populado com filmes!'
  end
end
