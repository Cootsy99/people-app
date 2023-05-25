class Citizenship < ApplicationRecord
  belongs_to :country
  belongs_to :person
end
