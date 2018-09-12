class AgregandoCampos < ActiveRecord::Migration[5.1]
  def change
  	add_column :maquinas, :valor, :integer
  	add_column :maquinas, :acepta, :boolean
  end
end
