class Journey < ApplicationRecord
  has_many :paths

  belongs_to :pathway
end
