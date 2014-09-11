json.array!(@lista) do |listum|
  json.extract! listum, :id, :nombre, :descripcion, :preciomxn
  json.url listum_url(listum, format: :json)
end
