class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :trim
      t.integer :horsepower
      t.integer :torque
      t.integer :number_of_cylinders
      t.float :engine_displacement
      t.integer :valves_per_cylinder
      t.timestamps
    end
  end
end
