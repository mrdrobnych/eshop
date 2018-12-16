class Profile < ApplicationRecord
	mount_uploader :avatar, PhotoUploader

	belongs_to :user
end
