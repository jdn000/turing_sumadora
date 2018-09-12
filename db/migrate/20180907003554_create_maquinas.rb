class CreateMaquinas < ActiveRecord::Migration[5.1]
  def change
    create_table :maquinas do |t|
      t.string :entrada

      t.timestamps
    end
  end
end
