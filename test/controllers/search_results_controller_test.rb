require "test_helper"

class SearchResultsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @post = posts(:one)
    @search_result = [@post]
  end

  test "should get index" do
    assert @search_result[0].title = @post.title
    
  end
end
