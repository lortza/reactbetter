class Reaction < ActiveRecord::Base

  before_validation :generate_slug

  validates :name, :explanation, :slug, presence: true, uniqueness: true

  PUBLISH_STATUS = %w(Published Unpublished)
  validates :publish_status, inclusion: { in: PUBLISH_STATUS }

  #scope :published, where(:publish_status => 'Published')
  scope :published, -> { where(:publish_status => 'Published').order("name") }
    
  def generate_slug
    self.slug ||= name.parameterize if name
  end #generate_slug

  def to_param
    slug
  end #to_param
  
end #Reaction
