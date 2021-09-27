require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  fixtures :posts

  test "post attributes must not be empty" do
    post = Post.new
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:ingredients].any?
    assert post.errors[:serves].any?
    assert post.errors[:procedure].any?
    
  end

  test 'post serves must be more than positive' do
    post = Post.new(
      title: 'My title',
      procedure: 'My procedure',
      ingredients: 'My ingredients',
      user: 0
    )

    post.serves = -1
    assert post.invalid?

    post.serves = 0
    assert post.invalid?

    post.serves = 1
    assert post.valid?

  end
  
end
