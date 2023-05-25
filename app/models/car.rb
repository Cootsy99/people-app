class Car < ApplicationRecord
    belongs_to :person
    validates :make, :model, :year, :sunroof, :color, presence: true
    validates :year, length: { minimum: 4, maximum: 4, too_short: "Too short! Make sure it's a valid year!" }

end
