class OfferTelephoneNumber < ApplicationRecord
  belongs_to :offer
  belongs_to :telephone_number
end
