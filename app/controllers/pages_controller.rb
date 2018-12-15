class PagesController < ApplicationController
  def index
  	if user_signed_in? and current_user.profile.nil?
  		redirect_to new_profile_path
  	end
  	pp @categories = Categorie.all
  end
end
