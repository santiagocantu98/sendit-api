class Api::V1::UserResource < JSONAPI::Resource
  attributes :email, :role, :estado_id, :calificacionProm, :name, :telefono
end