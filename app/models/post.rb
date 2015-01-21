class Post < ActiveRecord::Base
	validates :author, :title, :content, presence: true

	has_many :images
	has_many :comments, as: :commentable, dependent: :destroy

	belongs_to :author, class_name: 'User'
end
