class RemoveDealershipFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :dealership
  end
end
