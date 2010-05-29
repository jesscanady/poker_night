class CreateNights < ActiveRecord::Migration
  def self.up
    create_table :nights do |t|
      t.datetime :when
      t.boolean :active
      t.integer :winner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :nights
  end
end
