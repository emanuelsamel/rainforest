class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create

    @product = Product.create product_params

    if @product.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Product successfully created!'
      redirect_to product_path(@product.id)
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
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def update
    @product = Product.find(params[:id])

    if @product.update product_params
      flash[:notice] = 'Product successfully updated'
      redirect_to product_path(@product.id)
    else
      flash.now[:error] = 'Sorry try again'
      render :edit
    end
  end#update

  def destroy
      @product = Product.find(params[:id])
      @product.destroy
      flash[:alert] = "Product deleted!"
      redirect_to "/products"
    end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)

  end

end#ProductsController
