class CreatePremios < ActiveRecord::Migration
  def change
    create_table :premios do |t|
      t.string :titulo
      t.string :resumo
      t.text :descricao

      t.timestamps
    end
  end
end
