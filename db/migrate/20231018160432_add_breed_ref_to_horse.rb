class AddBreedRefToHorse < ActiveRecord::Migration[7.0]
  def change
    add_reference :horses, :breed, null: false, foreign_key: true
  end
end
