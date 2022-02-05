class ChangeBlogsToPictures < ActiveRecord::Migration[6.0]
  def change
    rename_table :blogs, :pictures
  end
end
