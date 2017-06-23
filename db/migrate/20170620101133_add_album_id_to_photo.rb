class AddAlbumIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :album_id, :string
  end
end
