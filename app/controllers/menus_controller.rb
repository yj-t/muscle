class MenusController < ApplicationController
  def create
    @menu =Menu.new(menu_params)
    @menu.save
  end

  private
  def menu_params
    params.require(:menu).permit(:training_type)
  end
end
