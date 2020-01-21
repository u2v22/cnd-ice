class AddReferencesToFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :climb_id
    remove_column :favorites, :user_id
    add_reference :favorites, :climb, foreign_key: true
    add_reference :favorites, :user, foreign_key: true
  end
end
