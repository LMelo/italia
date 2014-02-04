module EventosHelper

  def helper_evento_name(evento_id)
    evento_name = ""
    if evento_id
      evento = Evento.where(:id => evento_id).first
      if evento
        evento_name = evento.nome
      end
    end
    evento_name
  end

  def helper_evento_box(evento_objeto)
    render "eventos/evento_box", evento_box: evento_objeto
  end

  def helper_evento_list_box(evento_list)
    render "eventos/list_eventos_box", evento_lista: evento_list
  end
  
end
