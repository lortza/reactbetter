class Reaction < ApplicationRecord

  before_validation :generate_slug

  validates :explanation, presence: true, length: { minimum: 25 }
  validates :name, length: { maximum: 25 }
  validates :name, :slug, presence: true, uniqueness: true

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
