class Offer < ApplicationRecord
  belongs_to :resource
  belongs_to :address

  enum rental_period: {month:0, day:1}
  enum sidekiq_status: {searcher:0, parser:1, completed:2, error:3}

  has_many :offer_telephone_numbers
  has_many :telephone_numbers, through: :offer_telephone_numbers

  has_many :offer_hashtags
  has_many :hashtags, through: :offer_hashtags
  
  has_many :offer_urls
  has_many :urls, through: :offer_urls
  
  has_many :offer_img_urls
  has_many :img_urls, through: :offer_img_urls
end
