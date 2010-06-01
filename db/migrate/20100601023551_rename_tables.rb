class RenameTables < ActiveRecord::Migration
  def self.up
    rename_table :games, :records
    rename_table :nights, :games
  end

  def self.down
    rename_table :games, :nights
    rename_talbe :records, :games
  end
end
