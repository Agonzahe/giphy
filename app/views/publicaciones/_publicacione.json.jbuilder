json.extract! publicacione, :id, :titulo, :descripcion, :usuario_id, :created_at, :updated_at
json.url publicacione_url(publicacione, format: :json)
