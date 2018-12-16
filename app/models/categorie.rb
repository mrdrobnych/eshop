class Categorie < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	has_many :products
#	belongs_to :admin_user
#	validates :name, :photo, presence: true
end
