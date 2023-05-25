class Person < ApplicationRecord
    has_many :citizenships
    has_many :countries, through: :citizenships
end