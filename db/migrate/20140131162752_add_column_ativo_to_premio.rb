class AddColumnAtivoToPremio < ActiveRecord::Migration
  def change
    add_column :premios, :ativo, :boolean
    add_index :premios, :ativo
  end
end
