class Brand < ActiveRecord::Base
  belongs_to :country, dependent: :destroy
  belongs_to :region, dependent: :destroy
  belongs_to :producer, dependent: :destroy

  has_many :brand_grapes
  has_many :grapes, through: :brand_grapes
end
