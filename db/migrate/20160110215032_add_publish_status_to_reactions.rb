class AddPublishStatusToReactions < ActiveRecord::Migration
  def change
    add_column :reactions, :publish_status, :string, :default => "Published"
  end
end
