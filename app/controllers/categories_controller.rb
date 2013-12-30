class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

  def show
  	@category = Category.find(params[:id])
  end

  def new
  	@category = Category.new
  end

  def create
		@category = Category.new(category_params)
		if @category.save
      redirect_to '/categories', notice: "Category saved successfully."
    else
      render :new
    end
	end

  def edit
  	@category = Category.find(params[:id])
  end

  def update
  	@category = Category.find(params[:id])

    if @category.update_attributes(entry_params)
      redirect_to '/categories', notice: "Category saved successfully."
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to '/categories', notice: "Category destroyed"
  end

  protected 
  def category_params
    params.require(:category).permit(:name)
  end
end
