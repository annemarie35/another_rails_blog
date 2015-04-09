require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "1___should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "2___should get new" do
    sign_in users(:one)
    get :new
    assert_response :success
  end

  test "should create article" do
    sign_in users(:one)
    assert_difference('Article.count') do
      post :create, article: { description: @article.description, image: @article.image, resume: @article.resume, title: @article.title, user_id: @article.user_id }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    sign_in users(:one)
    patch :update, id: @article, article: { description: @article.description, image: @article.image, resume: @article.resume, title: @article.title, user_id: @article.user_id }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    sign_in users(:one)
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end
