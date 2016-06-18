class PagsController < ApplicationController
  def x
  	@name = params[:name]
  	@mail = params[:mail]
  	@age = params[:age]
  end

  def user_save
  	unless params[:name].blank? && params[:mail].blank? && params[:age].blank?
			User.create(name:params[:name], mail:params[:mail], age:params[:age] )
			redirect_to pags_x_path, notice:"User was saved succesfully"
	end
  end

  def landing
  	render layout: 'layout2'
  end
end
