class RenameTitleColumnToPictures < ActiveRecord::Migration[6.0]
  def change
    rename_column :pictures, :title, :image
  end
end
