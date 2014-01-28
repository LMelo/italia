class Conteudo < ActiveRecord::Base

  attr_accessible :ativo, :link, :texto, :tipo, :titulo

  # VALIDACOES
  validates_presence_of :titulo, :texto, :tipo

  after_initialize :default_values, :if => :new_record?

  def default_values
    self.ativo = true
  end

end
