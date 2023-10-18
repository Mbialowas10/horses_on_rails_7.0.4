class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :age
      t.integer :top_speed
      t.integer :number_of_legs

      t.timestamps
    end
  end
end
