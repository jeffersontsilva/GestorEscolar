json.array!(@professors) do |professor|
  json.extract! professor, :nome, :dtnascimento, :cpf, :rg, :endereco, :complemento, :cidade, :estado, :telefone, :email
  json.url professor_url(professor, format: :json)
end
