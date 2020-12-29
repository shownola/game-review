class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :review
      t.decimal :rating, precision: 3, scale: 1

      t.timestamps
    end
  end
end
