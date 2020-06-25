class ProductsController < ApplicationController
  def index
    @products = Product.includes(:images).order('created_at DESC')
  end
  
  def new
    @product = Product.new
    @product.images.new
  end
  
  def create
      @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def destroy
    @product.destroy
    redirect_to root_path
  end
end

private

def product_params
  params.require(:product).permit(:name, :price, :delivery_fee_id, :delivery_way_id, :prefecture_code, images_attributes: %i[src id _destroy])
end

def set_product
  @product = Product.find(params[:id])
end
