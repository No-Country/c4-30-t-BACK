class PasswordsController < ApplicationController
  def verify_account
    data = user_params
    @user = User.find_by(email: data["email"])

    if @user.present?
      RecovertMailer.with(user: @user).recovert_password.deliver_later

      render json: @user
    else
      render json: "Ocurrio un error!", status: :bad_request
    end
  end

  def recovert_account
    data = user_params
    @user = User.find_by(email: data["email"])
    @token = @user.to_sgid(expires_in: 20.minutes, purpose: "password_reset")

    if @user.present? && data["code"] === @user.code
      render json: { token: @token.to_s }
    else
      render json: "El código dado no es el correcto", status: :bad_request
    end
  end

  def update_password
    data = user_params
    @user = GlobalID::Locator.locate_signed(data["token"], purpose: "password_reset")

    if @user.present?
      @user.update(password: data["password"])
      render json: "Se actualizó correctamente el password"
    else
      render json: "No se actualizó correctamente", status: :bad_request
    end
  end

  private
  def user_params
    body = request.body.as_json

    JSON.parse(body[0]) if !body.empty?
  end
end
