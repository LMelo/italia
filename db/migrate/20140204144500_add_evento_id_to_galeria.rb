class AddEventoIdToGaleria < ActiveRecord::Migration
  def change
    add_column :galerias, :evento_id, :integer
  end
end
