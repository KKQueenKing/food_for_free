class UserCharityMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_charity_mailer.welcome.subject
  #
  def welcome
    @user = params[:user]
    @claim = params[:claim]
    mail(to: @user.email, subject: 'Food For Free - You have claimed a donation!')
  end
end
