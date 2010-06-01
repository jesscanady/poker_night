class RenameAssociationColumns < ActiveRecord::Migration
  def self.up
    rename_column :records, :night_id, :game_id
  end

  def self.down
    rename_column :records, :game_id, :night_id
  end
end
