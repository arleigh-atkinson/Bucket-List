class Activity < ActiveRecord::Base
	has_many :comments
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQFBtFORVLvc-TWuNdhpF2aLbKbLIe7jSQJ-ii1oA2xffKhkaLNDw"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
