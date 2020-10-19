class Resource < ApplicationRecord
  belongs_to :resource_type
  belongs_to :url
  belongs_to :city
end
