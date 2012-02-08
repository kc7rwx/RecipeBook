class Recipe < ActiveRecord::Base
  has_many :batches, dependent: :destroy
  
  accepts_nested_attributes_for :batches, :allow_destroy => true
  
end
