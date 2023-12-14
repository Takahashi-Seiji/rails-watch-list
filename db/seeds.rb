require 'json'
require 'open-uri'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movies = JSON.parse(movie_serialized)

movies['results'].each do |movie|
  title = movie['original_title']
  overview = movie['overview']
  banner_url = movie['poster_path']
  Movie.create(title: title, overview: overview, poster_url: banner_url)
end
