class AddTopSpeedToHorses < ActiveRecord::Migration[7.0]
  def change
    add_column :horses, :top_speed, :decimal
  end
end
