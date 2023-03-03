json.extract! movie, :id, :name, :releasedate, :created_at, :updated_at
json.url movie_url(movie, format: :json)
