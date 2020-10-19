class Url < ApplicationRecord
    has_many :offer_urls
    has_many :offers, through: :offer_urls
end
