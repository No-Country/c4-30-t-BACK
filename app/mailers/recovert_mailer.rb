class RecovertMailer < ApplicationMailer
  def recovert_password
    @user = params[:user]
    @code = (0...6).map { (65 + rand(26)).chr }.join

    @user.update(code: @code)

    mail(to: @user.email, subject: 'Recuperación de contraseña')
  end
end
