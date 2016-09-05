class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :temp_url
      t.string :permanent_url
      t.references :drone, foreign_key: true

      t.timestamps
    end
  end
end
