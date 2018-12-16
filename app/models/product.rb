class Product < ApplicationRecord
	mount_uploaders :images, PhotoUploader
	serialize :images, JSON # If you use SQLite, add this line.

	belongs_to :categorie
    has_many :posts
end
