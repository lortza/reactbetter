class AddSlugToReactions < ActiveRecord::Migration
  def change
    add_column :reactions, :slug, :string
  end
end
