class Categorie < ApplicationRecord
	has_many :products
#	belongs_to :admin_user
#	validates :name, :photo, presence: true
end
