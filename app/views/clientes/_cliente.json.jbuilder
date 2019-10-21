json.extract! cliente, :id, :nombre, :direccion, :telefono, :servicio_requerido, :descripcion_del_servicio_requerido, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
