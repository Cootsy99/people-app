class AddPersonReferenceToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :person, foreign_key: true
  end
end
