ActiveRecord::Base.transaction do
	25.times do 
		User.create!(name: Faker::Name.first_name, city: Faker::Address.city)
	end
	25.times do 
		Post.create!(author_id: (1..25).to_a.sample, title: Faker::Lorem.sentence(4), content: Faker::Lorem.sentence(10))
	end
	25.times do
		Image.create!(post_id: (1..25).to_a.sample, url: Faker::Company.logo)
	end
	25.times do
		Comment.create!(content: Faker::Lorem.sentence(4), commentable_type: "Post", commentable_id: (1..25).to_a.sample)
	end
	25.times do
		Comment.create!(content: Faker::Lorem.sentence(4), commentable_type: "Comment", commentable_id: (1..25).to_a.sample)
	end
end