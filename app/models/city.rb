class City < ApplicationRecord
  belongs_to :country
  has_many :addresses
  has_many :resources
end
