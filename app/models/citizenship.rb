class Citizenship < ApplicationRecord
  belongs_to :country
  belongs_to :person

  validates :country, :person, presence: true
end
