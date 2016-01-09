class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.string :name
      t.text :explanation

      t.timestamps null: false
    end
  end
end
