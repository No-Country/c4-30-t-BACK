class Api::V1::ProductsController < Api::V1::BaseController
  before_action :set_product, only: [ :show, :update, :destroy ]
  def index
    # @products = policy_scope(Product)
    @products = Product.all
  end

  def show
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      render json: @product
    else
      render_error
    end
  end

  def create
    @product = Product.new(product_params)

    # @product.user = current_user
    # authorize @product

    if @product.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @product.destroy
    head :no_content
  end


  private

  def set_product
    @product = Product.find(params[:id])
    # authorize @product  # For Pundit
  end

  def product_params
    params.require(:products).permit(:favorite)
  end

  def render_error
    render json: { errors: @product.errors.full_messages },
      status: :unprocessable_entity
  end
end
