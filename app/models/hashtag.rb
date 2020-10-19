class Hashtag < ApplicationRecord
    has_many :offer_hashtags
    has_many :offers, through: :offer_hashtags
end
