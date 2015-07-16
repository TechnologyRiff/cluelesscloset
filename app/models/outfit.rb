class Outfit < ActiveRecord::Base
  belongs_to :top
  belongs_to :bottom
  belongs_to :shoe
  belongs_to :accessory
end
