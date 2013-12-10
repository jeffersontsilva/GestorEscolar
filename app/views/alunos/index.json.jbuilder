json.array!(@alunos) do |aluno|
  json.extract! aluno, :nome, :dtnascimento, :sexo, :cpf, :rg, :endereco, :complemento, :bairro, :cidade, :estado, :telefone, :email, :turma_id
  json.url aluno_url(aluno, format: :json)
end
