class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :user_id
      t.integer :night_id
      t.integer :buyin
      t.integer :winnings
      t.integer :place

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
