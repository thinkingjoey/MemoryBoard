class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :code
      t.integer :user_id
      t.string :board_name

      t.timestamps null: false
    end
  end
end
