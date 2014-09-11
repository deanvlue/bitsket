class RemoveFieldNameFromLista < ActiveRecord::Migration
  def change
    remove_column :lista, :preciobtc, :float
  end
end
