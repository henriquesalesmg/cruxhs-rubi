json.extract! contato, :id, :nome, :telefone, :email, :pedido, :mensagem, :created_at, :updated_at
json.url contato_url(contato, format: :json)
