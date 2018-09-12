class AgregaNuevoValor < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :maquinas, :valor1, :integer
  end
end
