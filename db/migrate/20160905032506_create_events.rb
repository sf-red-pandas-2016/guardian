class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :temp_url
      t.string :permanent_url
      t.string :placeid
      t.references :drone, foreign_key: true
      t.references :user, foreign_key: true
      t.references :friend, foreign_key: true

      t.timestamps
    end
  end
end
