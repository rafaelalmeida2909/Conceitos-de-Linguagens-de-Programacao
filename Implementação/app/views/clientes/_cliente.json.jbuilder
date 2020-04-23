json.extract! cliente, :id, :Nome, :Email, :CPF, :Telefone, :Sexo, :Idade, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
