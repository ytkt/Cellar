class Brand < ActiveRecord::Base
  belongs_to :country, dependent: :destroy
  belongs_to :region, dependent: :destroy
  belongs_to :producer, dependent: :destroy
end
