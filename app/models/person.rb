class Person < ApplicationRecord
    has_many :citizenships
    has_many :countries, through: :citizenships

    validates :first_name, :last_name, :phone_number, :age, presence: true
    validates :phone_number, uniqueness: true
    validates :first_name, :last_name, length: { minimum: 3, maximum: 40, too_short: "Must be between 3 and 40 characters" }
    validates :age, numericality: true

end