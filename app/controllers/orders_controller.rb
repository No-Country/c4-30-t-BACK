class OrdersController < ApplicationController
  def index
    user_id = params[:id]
    @user = User.find(user_id)

    if @user.present?
      render json: @user.orders
    end
  end

  def show
    order_id = params[:id]
    @order = Order.find(order_id)

    if @order.present?
      render json: @order
    else
      render json: "Ocorrio un errorr"
    end
  end

  def create
    user_id = params[:id]
    @user = User.find(user_id)

    render json: "No se encontro el usuario", status: :bad_request if !@user.present?

    @order = Order.new(user_id: @user.id, state: params[:state], products: params[:products])

    if @order.save
      render json: "Se agregó correctamente"
    else
      render json: "Ocurrió un problema", status: :bad_request
    end
  end

  def clear
    @orders = Order.where(params[:list_ids])
    @orders.map { |item| item.destroy }

    render json: "Se limpio correctamente"
  end

  def destroy
    order_id = params[:id]
    @order = Order.find(order_id)

    if @order.present?
      @order.destroy

      render json: order_id
    else
      render json: "Ocorrio un errorr"
    end
  end

  def aument
    @order = Order.find(params[:order_id])
    @user = User.find(params[:user_id])

    if @order.present?
      @order.products["count"] = params[:count] + 1

      if @order.save
        render json: @user.orders
      end
    else
      render json: "Algó salio mal"
    end
  end

  def minus
    @order = Order.find(params[:order_id])
    @user = User.find(params[:user_id])

    if @order.present?
      @order.products["count"] = params[:count] - 1

      if @order.save
        render json: @user.orders
      end
    else
      render json: "Algó salio mal"
    end
  end
end
