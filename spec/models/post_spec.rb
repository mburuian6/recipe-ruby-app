require 'rails_helper'

RSpec.describe Post, type: :model do

  context 'has valid properties' do

    fixtures :posts
    subject(:post) { Post.new }

    let(:post_one) { posts(:one) }
    let(:post_two) { posts(:ruby) }

    before {}

    def user
      params_user = {
        password: 'password', user_name: 'test_user',
        name: 'Test User', email: 'test_user@mail.org'
      }
      @user ||= User.create!(params_user)
    end

    def new_post
      params_post = {
        title: 'title', ingredients: 'ingredients',
        procedure: 'procedure', serves: 1,
        user: user
      }
      @new_post ||= Post.new(params_post)
    end

    it 'has all attributes filled' do
      expect(new_post.title).not_to be_nil
      expect(new_post.ingredients).not_to be_nil
      expect(new_post.procedure).not_to be_nil
      expect(new_post.serves).not_to be_nil
      expect(new_post.user).not_to be_nil
    end

    it 'has a serves value that is positive' do
      expect(new_post.serves).to eq(1)
    end

    it 'belongs to an actual user' do
      expect(new_post.user).to be_an_instance_of(User)
    end

  end

end
