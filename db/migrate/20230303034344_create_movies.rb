class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.date :releasedate

      t.timestamps
    end
  end
end
