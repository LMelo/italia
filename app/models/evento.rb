class Evento < ActiveRecord::Base
  attr_accessible :data_evento, :nome

  has_many :galerias, class_name: "Galeria", foreign_key: "evento_id"

  # SCOPES
  scope :order_by_data_evento_desc, order("data_evento DESC")

end
