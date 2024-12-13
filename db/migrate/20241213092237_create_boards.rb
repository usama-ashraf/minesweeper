class CreateBoards < ActiveRecord::Migration[8.0]
  def change
    create_table :boards do |t|
      t.string :email
      t.string :name
      t.integer :width
      t.integer :height
      t.integer :mines
      t.text :board

      t.timestamps
    end
  end
end
