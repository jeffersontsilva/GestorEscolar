json.array!(@provas) do |prova|
  json.extract! prova, :aluno_id, :descricao, :valor
  json.url prova_url(prova, format: :json)
end
