require 'test_helper'

class AlunosControllerTest < ActionController::TestCase
  setup do
    @aluno = alunos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alunos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluno" do
    assert_difference('Aluno.count') do
      post :create, aluno: { bairro: @aluno.bairro, cidade: @aluno.cidade, complemento: @aluno.complemento, cpf: @aluno.cpf, dtnascimento: @aluno.dtnascimento, email: @aluno.email, endereco: @aluno.endereco, estado: @aluno.estado, nome: @aluno.nome, rg: @aluno.rg, sexo: @aluno.sexo, telefone: @aluno.telefone, turma_id: @aluno.turma_id }
    end

    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "should show aluno" do
    get :show, id: @aluno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aluno
    assert_response :success
  end

  test "should update aluno" do
    patch :update, id: @aluno, aluno: { bairro: @aluno.bairro, cidade: @aluno.cidade, complemento: @aluno.complemento, cpf: @aluno.cpf, dtnascimento: @aluno.dtnascimento, email: @aluno.email, endereco: @aluno.endereco, estado: @aluno.estado, nome: @aluno.nome, rg: @aluno.rg, sexo: @aluno.sexo, telefone: @aluno.telefone, turma_id: @aluno.turma_id }
    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "should destroy aluno" do
    assert_difference('Aluno.count', -1) do
      delete :destroy, id: @aluno
    end

    assert_redirected_to alunos_path
  end
end
