class Post < ApplicationRecord
	belongs_to :category
	belongs_to :admin_user
end
