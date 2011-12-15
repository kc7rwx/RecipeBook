class Recipe < ActiveRecord::Base
  has_many :variations, :dependent => :destroy
  has_many :ingredients, :through => :variations
  has_and_belongs_to_many :categories
  has_many :notes, :through => :tasting_notes
end
