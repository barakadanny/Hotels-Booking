class CreateServiceRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :service_rooms do |t|
      t.references :room, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
