class ApplicationMailer < ActionMailer::Base
  default from: email_address_with_name(
    Rails.application.credentials.default_mail_from,
    'Our Company'
  )
  layout 'mailer'
end
