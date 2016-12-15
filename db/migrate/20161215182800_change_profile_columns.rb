class ChangeProfileColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :profile_photo_data
    add_column :users, :profile_photo_data, :string
  end
end
