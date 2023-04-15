class UsersController < ApplicationController
  # before_action :authenticate_user!
  def show
    user_id = params[:id]
    @user = User.find(user_id)

    if @user.present?
      render json: @user
    else
      render json: "No se encontró al usuario", status: :bad_request
    end
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(user: @user).welcome_email.deliver_later

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    user_id = params[:id]
    @user = User.find(user_id)

    if @user.update(user_params)
      render json: @user
    else
      render json: "No se actualizó el usuario correctamente", status: :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :last_name, :phone, :direction, :district, :card_number, :card_type, :reference_house, :house_number, :expiration, :cvv)
  end
end
