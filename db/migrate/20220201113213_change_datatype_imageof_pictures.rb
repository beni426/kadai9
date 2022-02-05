class ChangeDatatypeImageofPictures < ActiveRecord::Migration[6.0]
  def change
    change_column :pictures, :image, :text
  end
end
