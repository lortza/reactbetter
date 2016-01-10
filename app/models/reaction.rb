class Reaction < ActiveRecord::Base

  validates :name, :explanation, presence: true, uniqueness: true

  PUBLISH_STATUS = %w(Published Unpublished)
  validates :publish_status, inclusion: { in: PUBLISH_STATUS }
  
end #Reaction
