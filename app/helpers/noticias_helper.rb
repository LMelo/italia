module NoticiasHelper

  def helper_noticia_show_thumbnail(noticia)
    render "noticias/thumbnail", :noticia_thumbnail => noticia
  end

  def helper_noticia_list_thumbnail(objeto_noticia)
    render "noticias/list_thumbnail", :noticias_lista => objeto_noticia
  end

end
