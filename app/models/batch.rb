class Batch < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients
  has_many :instructions
  
  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  
end
