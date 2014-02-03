module NoticiasHelper

  def helper_noticia_show_thumbnail(noticia, altura=150, largura=150)
    render "noticias/thumbnail", :noticia_thumbnail => noticia, :altura => altura, :largura => largura
  end

  def helper_noticia_list_thumbnail(noticias_list)
    render "noticias/list_thumbnail", :noticias_lista => noticias_list
  end

end
