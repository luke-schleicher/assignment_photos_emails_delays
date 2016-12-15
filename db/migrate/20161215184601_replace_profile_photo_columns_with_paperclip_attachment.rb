class ReplaceProfilePhotoColumnsWithPaperclipAttachment < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :profile_photo_data
    remove_column :users, :profile_photo_mime_type
    remove_column :users, :profile_photo_name

    add_attachment :users, :profile_photo
  end
end
