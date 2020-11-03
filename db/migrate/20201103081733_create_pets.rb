class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.boolean :dead, default: false
      t.string :address
      t.date :found_on

      t.timestamps
    end
  end
end
