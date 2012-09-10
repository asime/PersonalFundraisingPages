class Notifier < ActionMailer::Base
  include SendGrid
  default :from => "arin@agilityfeat.com"

  # send a signup email to the user, pass in the user object that contains the user's email address
  def signup_email(champion)
    mail( :to => champion.email,
    :subject => "Thanks for signing up" )
  end
end
