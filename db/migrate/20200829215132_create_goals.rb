class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.text :goal
      t.text :daily_top_5

      t.timestamps
    end
  end
end
