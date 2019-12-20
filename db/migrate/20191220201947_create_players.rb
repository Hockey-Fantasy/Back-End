class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :position
      t.float :fantasy_points
      t.integer :goals
      t.integer :assists
      t.float :penalty_minutes
      t.integer :shots_on_goal
      t.integer :short_handed_goals
      t.integer :power_play_points

      t.timestamps
    end
  end
end
