class AddSlugToReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :reactions, :slug, :string
  end
end
