module CommentsHelper
  def comment_user_name(id)
    return User.find(id).user_name
  rescue => err
    puts err.full_message
    return 'user'
  end
end
