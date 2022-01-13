# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def post_success_email
    UserMailer.with(post: Post.first, user: User.first).post_success_email
  end
end
