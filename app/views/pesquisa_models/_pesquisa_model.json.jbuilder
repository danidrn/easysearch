json.extract! pesquisa_model, :id, :titulo, :descricao, :publico_alvo, :data_limite, :link, :created_at, :updated_at
json.url pesquisa_model_url(pesquisa_model, format: :json)
