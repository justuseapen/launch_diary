class EntriesController < ApplicationController
	def index
		@entries = Entry.all
	end
	def show
		@entry = Entry.find(params[:id])
	end
	def new
		@entry = Entry.new
	end
	def create
		@entry = Entry.new(entry_params)
		if @entry.save
      redirect_to '/entries', notice: "Entry saved successfully."
    else
      render :new
    end
	end
	def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update_attributes(entry_params)
      redirect_to '/entries', notice: "Entry saved successfully."
    else
      render :edit
    end
  end

  protected 
  def entry_params
    params.require(:entry).permit(:title, :description, :category_id)
  end
end
