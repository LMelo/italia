module GaleriasHelper

  def helper_galeria_fotos_por_evento(galeria_lista)
    render "galerias/galeria_listagem", galeria_lista: galeria_lista
  end

end
