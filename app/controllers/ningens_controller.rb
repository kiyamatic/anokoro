class NingensController < ApplicationController

	def index
		@ningens = Ningen.all
	end

	def show
		@ningen = Ningen.find(params[:id])
	end

	def new
		@ningen = Ningen.new
	end

	def create
		@ningen = Ningen.new(ningen_params)
		if @ningen.save
			redirect_to root_path
		else
			render "new"
		end
	end

	def edit
		@ningen = Ningen.find(params[:id])
	end

	def update
		@ningen = Ningen.find(params[:id])
		if @ningen.update(ningen_params)
			redirect_to @ningen
		else
			render "edit"
		end
	end

	def destroy
		@ningen = Ningen.find(params[:id])
		@ningen.destroy
		redirect_to root_path
	end

	private

	def ningen_params
		params[:ningen].permit(:name, :description, :category, :img_url)
	end

end
