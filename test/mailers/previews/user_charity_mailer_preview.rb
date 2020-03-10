# Preview all emails at http://localhost:3000/rails/mailers/user_charity_mailer
class UserCharityMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_charity_mailer/welcome
  def welcome
    user = Charity.first.user
    claim = Claim.first

    UserCharityMailer.with(user: user, claim: claim).welcome.deliver_now
  end

end
