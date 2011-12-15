class Variation < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients, :dependent => :destory
  has_many :tasting_notes
end
