class TelephoneNumber < ApplicationRecord
    has_many :offer_telephone_numbers
    has_many :offers, through: :offer_telephone_numbers
end
