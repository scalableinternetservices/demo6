class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.references :community, null: false, foreign_key: true

      t.timestamps
    end
  end
end
