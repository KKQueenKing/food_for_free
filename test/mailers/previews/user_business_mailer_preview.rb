# Preview all emails at http://localhost:3000/rails/mailers/user_business_mailer
class UserBusinessMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_business_mailer/welcome
  def welcome
    UserBusinessMailer.welcome
  end

end
