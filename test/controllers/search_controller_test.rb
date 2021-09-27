require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest

  setup do
    @post = posts(:one)
  end

  test "should get new form for search" do
    get search_url
    assert_response :success
  end

  test "should search existing post" do
    test_title = @post.title.downcase
    
    search_result = Post.where("title like ?", "%"+ test_title +"%")
    assert_equal test_title, search_result[0].title

    # assert_redirected_to search_results_index_url
  end

end
