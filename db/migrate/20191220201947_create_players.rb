class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :position
      t.float :fantasy_points
      t.integer :goals
      t.integer :assists
      t.string :image


      t.timestamps
    end
  end
end
