class Product < ActiveRecord::Base
        extend FriendlyId
        friendly_id :name, use: :slugged
        
        belongs_to :user
        has_many :sales
        has_attached_file :image
        
        validates_attachment_content_type :image, 
content_type:  /^image\/(png|gif|jpeg)/,
message: "Only images allowed"



validates :image, attachment_presence: true
validates_numericality_of :price,
greater_than: 49, message: "must be atleast 50 cents"
end
