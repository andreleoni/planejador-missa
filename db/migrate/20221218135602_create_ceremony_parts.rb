class CreateCeremonyParts < ActiveRecord::Migration[7.0]
  def change
    create_table :ceremony_parts do |t|
      t.references :ceremony, null: false, foreign_key: true
      t.string :title
      t.string :external_url
      t.string :notes

      t.timestamps
    end
  end
end
