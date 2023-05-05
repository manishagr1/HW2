class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string "movie_title"
      t.integer "year"
      t.string "rating"
      t.integer "id_studio"
      t.timestamps
    end
  end
end
