class Country < ActiveRecord::Base
  has_many :brands
  has_many :regoins
end
