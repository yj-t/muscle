class Post < ActiveRecord::Base
  has_many :menus
  belongs_to :user
  accepts_nested_attributes_for :menus
end
