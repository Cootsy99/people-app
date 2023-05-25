class Country < ApplicationRecord
    has_many :citizenships
    has_many :people, through: :citizenships

    validates :name, presence: true
    validates :name, uniqueness: true

end
