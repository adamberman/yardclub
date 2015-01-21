class Comment < ActiveRecord::Base
	validates :content, :commentable, presence: true

	has_many :comments, as: :commentable, dependent: :destroy

	belongs_to :commentable, polymorphic: true
end
