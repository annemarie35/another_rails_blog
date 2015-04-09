require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "0__ARTICLES__should not save article without title" do
    article = Article.new
    assert article.invalid?, "title is mandatory"
  end
end
