class Variation < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients, :dependent => :destroy
  has_many :instructions, :dependent => :destroy
  has_many :tasting_notes
end
