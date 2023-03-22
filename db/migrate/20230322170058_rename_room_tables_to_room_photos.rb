class RenameRoomTablesToRoomPhotos < ActiveRecord::Migration[7.0]
  def change
    rename_table :room_tables, :room_photos
  end
end
