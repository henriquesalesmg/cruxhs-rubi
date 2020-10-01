json.extract! home, :id, :nome, :email, :telefone, :pedido, :mensagem, :created_at, :updated_at
json.url home_url(home, format: :json)
