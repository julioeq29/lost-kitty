class Pet < ApplicationRecord
  SPECIES = %w(chinchilla dolphin dragon koala dog)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }


  def days_since_found
    (Date.today - found_on).to_i
  end
end
