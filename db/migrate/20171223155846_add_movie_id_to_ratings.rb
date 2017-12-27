class AddMovieIdToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :movie_id, :integer
  end
end
