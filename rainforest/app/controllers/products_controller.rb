class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create

    @product = Product.create product_params

    if @product.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Product successfully created!'
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end


  end

  def new
    @product = Product.new
  end

  def edit
  end#edit

  def show
  end#show

  def update
  end#update

  def destroy
  end#destroy

  private

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)

  end

end#ProductsController
