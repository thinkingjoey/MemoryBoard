class ChangeCodeToString < ActiveRecord::Migration
  def change
    remove_column :boards, :code, :integer
    add_column :boards, :code, :string
  end
end
