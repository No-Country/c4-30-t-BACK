class RegistersController < ApplicationController
  def sign_up
    data = user_params
    @user = User.new(email: data["email"], password: data["password"], name: data["name"])

    if @user.save
      session[:user_id] = @user.id

      PasswordConfirmationMailer.with(user: @user).password_confirmation.deliver_later

      render json: @user
    else
      render json: "Correo invalido o contraseña muy corta", status: :bad_request
    end
  end

  def sign_in
    data = user_params
    @user = User.find_by(email: data["email"])

    if @user.present? && @user.valid_password?(data["password"])
      session[:user_id] = @user.id

      render json: @user
    else
      render json: "Correo o contraseña invalidos", status: :bad_request
    end
  end

  # Verificacion del codigo enviado a su correo del usuario
  def verify_code
    @user = User.find(params[:id])

    data = user_params

    if data["code"] === @user.code && @user.present?
      render json: @user
    else
      render json: "Código incorrecto", status: :bad_request
    end
  end

  private

  def user_params
    body = request.body.as_json

    JSON.parse(body[0]) if !body.empty?
  end
end
