class PasswordConfirmationMailer < ApplicationMailer
  def password_confirmation
    @user = params[:user]
    @number = (0...6).map { (65 + rand(26)).chr }.join
    @user.update(code: @number)

    mail(to: @user.email, subject: 'Veride')

  end
end
