class PicsController < ApplicationController

	def index
		@pics = Pic.page(params[:page]).per (4)
	end

	def new
		@pic = Pic.new
	end

	def create
		@pic = Pic.create( pic_params )
		redirect_to pics_path
	end

	private

	def pic_params
		params.require(:pic).permit(:lesson, :emotion, :learned, :image)
	end

end
