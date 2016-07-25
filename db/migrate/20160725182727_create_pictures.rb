class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :board_id
      t.binary :picture_blob

      t.timestamps null: false
    end
  end
end
