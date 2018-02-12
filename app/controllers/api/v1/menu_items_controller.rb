# menu_items_controller.rb
class Api::V1::MenuItemsController < Api::V1::BaseController
  before_action :set_menu_item, only: [ :show ]

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def index
    @menu_items = MenuItem.all
    @menu_items = policy_scope(MenuItem)
  end

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
    authorize @menu_item
  end
end
