class Recipe < ActiveRecord::Base
  has_many :variations
end
