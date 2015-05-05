json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :telefono, :celular, :barrio, :direccion, :referenciadir, :fecha, :hora, :ocacion, :valor
  json.url cliente_url(cliente, format: :json)
end
