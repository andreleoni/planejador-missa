class CreateCeremonies < ActiveRecord::Migration[7.0]
  def change
    create_table :ceremonies do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :finish_at

      t.timestamps
    end
  end
end
