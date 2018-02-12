# menu_categories_controller.rb

class Api::V1::MenuCategoriesController < Api::V1::BaseController
   before_action :set_menu_category, only: [ :show ]

  def show
    @menu_category = MenuCategory.find(params[:id])
  end

  def index
    @menu_categories = MenuCategory.all
    # @menu_categories = policy_scope(MenuCategory)
  end

   def set_menu_category
    @menu_category = MenuCategory.find(params[:id])
    authorize @menu_category  # For Pundit
  end
end
