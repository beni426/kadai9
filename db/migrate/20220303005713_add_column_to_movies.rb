class AddColumnToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies,:content, :text,null: true
    add_column :movies,:status,:integer,default: 0
  end
end
