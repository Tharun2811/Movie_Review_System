class AddAverageRatingsToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :average_ratings, :float,default: 0
  end
end
