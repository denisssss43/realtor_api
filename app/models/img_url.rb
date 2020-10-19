class ImgUrl < ApplicationRecord
    has_many :offer_img_urls
    has_many :offers, through: :offer_img_urls
end
