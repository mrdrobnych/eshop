class Product < ApplicationRecord
	belongs_to :admin
	belongs_to :categorie
    has_many :posts

    validates :title, :body, presence: true
end
