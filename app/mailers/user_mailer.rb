class UserMailer < ApplicationMailer
  default from: 'veride@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hello, welcome to veridé"

    mail to: "to@example.org"
  end
end
