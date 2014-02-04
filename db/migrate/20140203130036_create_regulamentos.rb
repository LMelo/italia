class CreateRegulamentos < ActiveRecord::Migration
  def change
    create_table :regulamentos do |t|
      t.integer :regulamento_id
      t.text :descricao
      t.integer :secao

      t.timestamps
    end
    add_index :regulamentos, :regulamento_id
    add_index :regulamentos, :secao
  end
end
