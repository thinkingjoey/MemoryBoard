class ModifyBoard < ActiveRecord::Migration
  def change
    rename_column :boards, :board_name, :name
    remove_column :boards, :image, :string
  end
end
