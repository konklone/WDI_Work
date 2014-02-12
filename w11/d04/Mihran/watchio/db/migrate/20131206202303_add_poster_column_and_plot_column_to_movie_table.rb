class AddPosterColumnAndPlotColumnToMovieTable < ActiveRecord::Migration
  def change
    add_column :movies, :poster, :string
    add_column :movies, :plot, :text
  end
end


