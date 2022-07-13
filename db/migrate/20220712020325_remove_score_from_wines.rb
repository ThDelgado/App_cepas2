class RemoveScoreFromWines < ActiveRecord::Migration[7.0]
  def change
    remove_column :wines, :score, :integer
  end
end
