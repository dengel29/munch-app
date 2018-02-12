# app/controllers/api/v1/restaurants_controller.rb
class Api::V1::MenusController < Api::V1::BaseController
  def index
    @menus = policy_scope(Menu)
  end
end
