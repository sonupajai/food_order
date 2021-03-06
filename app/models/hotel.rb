class Hotel
  include Mongoid::Document
  include Mongoid::Paperclip
  has_mongoid_attached_file :image
  field :name, type: String
  field :type, type: String
  field :city_id, type: String
  field :speciality, type: String
  field :address, type: String
  field :owner_id, type: String
  belongs_to :user 
  belongs_to :city

  do_not_validate_attachment_file_type :image
  validates :name, :type, :city_id, :presence => true
   
  #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
















