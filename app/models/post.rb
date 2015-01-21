class Post < ActiveRecord::Base
	validates :author, :title, :content, presence: true

	belongs_to :author, class_name: 'User'
end
