class Post < ApplicationRecord
	belongs_to :category
	belongs_to :admin_user
	has_many :comments, dependent: :destroy
	# validates :title, presence: true
	# validates_length_of :body, minimum: 10
end
