class RenameProviceToProvince < ActiveRecord::Migration
  def up
    rename_column :events, :provice, :province
  end

  def down
    rename_column :events, :province, :provice
  end
end
