class UserMailer < ApplicationMailer

  def post_success_email
    @post = params[:post]
    @user = params[:user]
    @url = new_user_session_url
    # @user = current_user
    # @url = "#{Rails.application.credentials.domain_url}/users/sign_in"

    attachments.inline['welcome.jpeg'] = File.read("#{Rails.root}/app/assets/images/welcome.jpeg")
    attachments['post_success.pdf'] = File.read("#{Rails.root}/app/assets/pdf/welcome.pdf")
    mail(to: @user.email, subject: "Post success!")
  end

end
