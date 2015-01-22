json.extract!(
	post,
	:id,
	:title,
	:content
)
post.author do |author|
	author.name
	author.city
end

json.array! post.images, partial: 'image', as: :image
