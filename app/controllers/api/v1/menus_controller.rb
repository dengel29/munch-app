# app/controllers/api/v1/restaurants_controller.rb
class Api::V1::MenusController < Api::V1::BaseController
  before_action :set_menu, only: [ :show ]

  def show
    @menu = set_menu
  end

  def index
    @menus = Menu.all
    @menus = policy_scope(Menu)
  end

  def set_menu
    @menu = Menu.find(params[:id])
    authorize @menu
  end
end
