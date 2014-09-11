class CreateLista < ActiveRecord::Migration
  def change
    create_table :lista do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :preciomxn
      t.decimal :preciobtc

      t.timestamps
    end
  end
end
