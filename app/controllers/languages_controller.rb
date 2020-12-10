class LanguagesController < ApplicationController
  def index
    @language = Language.new
    @languages = Language.all
  end
  def create
    binding.pry
    @language = Language.new(item_params)
    binding.pry
    if @language.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
 
  def item_params
   params.require(:language).permit(:gem_name, :about_gem,:syntax_name,:version,:how_to_use,:description,:reference_url)
  end
end
