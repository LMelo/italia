class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.date :data_evento

      t.timestamps
    end
  end
end
