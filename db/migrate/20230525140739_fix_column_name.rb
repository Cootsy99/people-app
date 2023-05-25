class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :moonroof, :sunroof
  end
end
