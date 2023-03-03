class AddUserToReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :user,  foreign_key: true
  end
end
