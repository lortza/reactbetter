class Reaction < ActiveRecord::Base

  before_validation :generate_slug

  validates :name, :explanation, :slug, presence: true, uniqueness: true

  PUBLISH_STATUS = %w(Published Unpublished)
  validates :publish_status, inclusion: { in: PUBLISH_STATUS }

  #scope :published, where(:publish_status => 'Published')
  scope :published, -> { where(:publish_status => 'Published').order("name") }

  # REACT_IMAGES = ["alaska-139934_1920.jpg", "alaska-810433_1920.jpg", "alps-757731_1280.jpg", "autumn-219972_1280.jpg", "beach-425167_1920.jpg", "blue-993517_1920.jpg", "boardwalk-142632_1920.jpg", "daisies-388946_1920.jpg", "daisies-388947_1920.jpg", "forests-231066_1920.jpg", "glen-canyon-113688_1280.jpg", "green-1072828_1920.jpg", "heart-rock-1111680_1920.jpg", "holiday-957172_1920.jpg", "lake-865155_1920.jpg", "landscape-937508_1920.jpg", "monument-valley-53637_1280.jpg", "park-429712_1920.jpg", "road-815297_1920.jpg", "stone-arch-828730_1280.jpg", "tree-247122_1280.jpg", "tulips-52125_960_720.jpg", "utah-440520_1280.jpg", "sunflower-1127174_1920.jpg", "road-1072823_1920.jpg", "antelope-canyon-1128815_1920.jpg", "zugspitze-1048995_1920.jpg", "architecture-756150_1920.jpg", "peacock-50515.jpg", "tree-675073_1920.jpg", "field-644440_1920.jpg", "flower-1085998_1280.jpg"] 
  # def react_image
  #   REACT_IMAGE.sample 
  # end #react_image
    
  def generate_slug
    self.slug ||= name.parameterize if name
  end #generate_slug

  def to_param
    slug
  end #to_param
  
end #Reaction
