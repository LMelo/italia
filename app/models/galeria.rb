class Galeria < ActiveRecord::Base
  attr_accessible :titulo, :file, :evento_id

  belongs_to :evento, class_name: "Evento", foreign_key: :evento_id

  has_attached_file :file, styles: { medium: "300x300>", thumbnail: "100x100" }

  validates_presence_of :evento

  # SCOPES
  scope :where_evento_id, lambda{|evento_id| where("evento_id = ?", evento_id)}

end
