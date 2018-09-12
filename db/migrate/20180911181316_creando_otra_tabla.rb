class CreandoOtraTabla < ActiveRecord::Migration[5.1]
  def change
    create_table :mts do |t|
      t.string :cinta
      t.integer :var1 
      t.integer :var2
      t.timestamps
    end
  end
end
