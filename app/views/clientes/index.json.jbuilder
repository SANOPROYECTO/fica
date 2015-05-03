json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :telefono, :celular, :direccion, :referenciadir, :ocacion, :hora, :valor
  json.url cliente_url(cliente, format: :json)
end
