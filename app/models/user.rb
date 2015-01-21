class User < ActiveRecord::Base
	validates :name, :city, presence: true
	
end
