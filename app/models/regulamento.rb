class Regulamento < ActiveRecord::Base
  attr_accessible :descricao, :regulamento_id, :secao

  has_many :regras, class_name: "Regulamento", foreign_key: :regulamento_id
  belongs_to :regulamento, class_name: "Regulamento", foreign_key: :regulamento_id

  # SCOPES
  scope :next_record, lambda {|id| where("id > ?", id).limit(1)}
  scope :maior_secao, lambda {|pai_id| where("regulamento_id = ?", pai_id).order("secao DESC").limit(1)}

  def get_maior_secao(regulamento_pai_id)
    maior_secao = 1
    max_sec = Regulamento.maior_secao(regulamento_pai_id)
    max_sec.each do |ms|
      maior_secao = ms.secao.to_s.size
    end
    maior_secao
  end

end
