class MenuCategoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

    def index?
      true
    end

    def show?
      true # everyone can access endpoint
    end
  end
end
