json.extract! estudiante, :id, :rut, :nombre, :apellido_mat, :apellido_pat, :direccion, :comuna_id, :curso_id, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
