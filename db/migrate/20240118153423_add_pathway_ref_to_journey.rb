class AddPathwayRefToJourney < ActiveRecord::Migration[6.1]
  def change
    add_reference :journeys, :pathway, null: false, foreign_key: true
  end
end
