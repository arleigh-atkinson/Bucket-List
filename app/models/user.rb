class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :activities
	has_many :comments
	has_attached_file :user_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :user_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}
end
