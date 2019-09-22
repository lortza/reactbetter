class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.string :name
      t.text :explanation

      t.timestamps null: false
    end
  end
end
