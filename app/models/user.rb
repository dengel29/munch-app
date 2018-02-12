class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  has_many :menus
  has_many :menu_categories
  has_many :menu_subcategories
  has_many :menu_items

  def password_required?
    false
  end
end
