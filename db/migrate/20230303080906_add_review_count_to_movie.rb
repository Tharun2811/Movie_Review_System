class AddReviewCountToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :review_count, :integer,default: 0
  end
end
