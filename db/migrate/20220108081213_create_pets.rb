class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :color
      t.date :found_on
      t.string :address

      t.timestamps
    end
  end
end
