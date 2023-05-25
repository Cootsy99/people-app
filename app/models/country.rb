class Country < ApplicationRecord
    has_many :citizenships
    has_many :people, through: :citizenships

end
