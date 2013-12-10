json.array!(@aulas) do |aula|
  json.extract! aula, :professor_id, :turma_id
  json.url aula_url(aula, format: :json)
end
