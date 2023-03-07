class Rating < ApplicationRecord
  belongs_to :movie

  after_create :update_movie_rating_average

  def update_movie_rating_average
    movie.update(average_ratings: movie.ratings.average(:rate))
  end
end
