class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_rate
      t.date :availability
      t.boolean :has_desk
      t.string :bed_size
      t.string :floor
      t.string :entrance
      t.string :bathroom_access
      t.string :internet_access
      t.string :television_avaibility

      t.timestamps
    end
  end
end
