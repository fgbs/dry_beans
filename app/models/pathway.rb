class Pathway < ApplicationRecord
  before_validation :set_defaults

  has_many :journeys

  private

    def set_defaults
      status = "ACTIVE"
      date = Date.today
    end

end
