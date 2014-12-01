class UserMailer < ActionMailer::Base
  default from: "no-reply@pittario-mailer.dev"

  def general body, subject, users
    @subject = subject
    @body = body
    @users = users
    user_emails = users.map { |user| user.email }
    mail to: user_emails, subject: subject
  end
end
