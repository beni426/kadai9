class DeleteFavoriteTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :favorite
  end
end
