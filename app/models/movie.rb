class Movie < ApplicationRecord
  has_many :ratings,dependent: :destroy
  has_many :reviews,dependent: :destroy
end
