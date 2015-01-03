class Grape < ActiveRecord::Base
  has_many :brand_grapes
  has_many :brand, through: :brand_grapes
end
