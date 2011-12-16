class Variation < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients, :dependent => :destroy
  has_many :tasting_notes
  has_many :instructions
end
