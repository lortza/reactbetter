class AddPublishStatusToReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :reactions, :publish_status, :string, :default => "Published"
  end
end
