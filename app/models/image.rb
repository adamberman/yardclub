class Image < ActiveRecord::Base
	validates :post, :url, presence: true

	belongs_to :post
end
