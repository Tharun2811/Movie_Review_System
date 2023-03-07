class Review < ApplicationRecord
  belongs_to :movie,counter_cache: :review_count
  belongs_to :user
end
