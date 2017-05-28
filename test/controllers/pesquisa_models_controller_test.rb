require 'test_helper'

class PesquisaModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pesquisa_model = pesquisa_models(:one)
  end

  test "should get index" do
    get pesquisa_models_url
    assert_response :success
  end

  test "should get new" do
    get new_pesquisa_model_url
    assert_response :success
  end

  test "should create pesquisa_model" do
    assert_difference('PesquisaModel.count') do
      post pesquisa_models_url, params: { pesquisa_model: { data_limite: @pesquisa_model.data_limite, descricao: @pesquisa_model.descricao, link: @pesquisa_model.link, publico_alvo: @pesquisa_model.publico_alvo, titulo: @pesquisa_model.titulo } }
    end

    assert_redirected_to pesquisa_model_url(PesquisaModel.last)
  end

  test "should show pesquisa_model" do
    get pesquisa_model_url(@pesquisa_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_pesquisa_model_url(@pesquisa_model)
    assert_response :success
  end

  test "should update pesquisa_model" do
    patch pesquisa_model_url(@pesquisa_model), params: { pesquisa_model: { data_limite: @pesquisa_model.data_limite, descricao: @pesquisa_model.descricao, link: @pesquisa_model.link, publico_alvo: @pesquisa_model.publico_alvo, titulo: @pesquisa_model.titulo } }
    assert_redirected_to pesquisa_model_url(@pesquisa_model)
  end

  test "should destroy pesquisa_model" do
    assert_difference('PesquisaModel.count', -1) do
      delete pesquisa_model_url(@pesquisa_model)
    end

    assert_redirected_to pesquisa_models_url
  end
end
