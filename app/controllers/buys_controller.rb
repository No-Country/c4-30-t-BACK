class BuysController < ApplicationController
  def index
    @list_buy = Buy.where(user_id: params[:id])

    if @list_buy.present?
      render json: @list_buy
    else
      render json: [], state: :bad_request
    end
  end

  def show
    buy_id = params[:buy_id]
    @buy = Buy.find(buy_id)

    if @buy.present?
      render json: @buy
    else
      render json: "No se encontro la compra"
    end
  end

  def create
    user_id = params[:id]
    @user = User.find(user_id)

    if @user.present?
      @buy = Buy.create(user_id: @user.id, amount: params[:amount], state: params[:state], products: params[:products])
      render json: @buy
    else
      render json: "No se encontro el usuario", state: :bad_request
    end
  end

  def destroy
    buy_id = params[:id]

    @buy = Buy.find(buy_id)

    if @buy.present?
      @buy.destroy

      render json: "Se elimino correctamente"
    else
      render json: "No se encontro la compra", state: :bad_request
    end
  end
end
