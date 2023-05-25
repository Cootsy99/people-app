class CreateCitizenships < ActiveRecord::Migration[7.0]
  def change
    create_table :citizenships do |t|
      t.references :country, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
