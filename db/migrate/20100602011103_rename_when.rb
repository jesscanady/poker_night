class RenameWhen < ActiveRecord::Migration
  def self.up
    rename_column :games, :when, :scheduled_for
  end

  def self.down
    rename_column :games, :scheduled_for, :when
  end
end
