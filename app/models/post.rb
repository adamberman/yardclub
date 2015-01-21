class Post < ActiveRecord::Base
	validates :author, :title, :content, presence: true

	has_many :images

	belongs_to :author, class_name: 'User'
end
