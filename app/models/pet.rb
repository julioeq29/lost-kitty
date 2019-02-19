class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w(chinchilla dolphin dragon koala dog) }
end
