class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :language
      t.integer :level
      t.integer :price
      t.string :time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
