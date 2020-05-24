json.extract! evento, :id, :comuna_id, :descripcion, :organizacion, :encargado, :direccion, :dias_horarios, :organizador, :photo, :created_at, :updated_at
json.url evento_url(evento, format: :json)
