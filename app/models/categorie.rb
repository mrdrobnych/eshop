class Categorie < ApplicationRecord
	has_many :products
	belongs_to :admin
	validates :name, :photo, presence: true
end
