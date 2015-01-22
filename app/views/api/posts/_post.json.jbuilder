json.extract!(
	post,
	:id,
	:title,
	:content
)
json.author do
	json.partial! 'api/users/user', user: post.author
end

json.images do
	json.array! post.images, partial: 'api/images/image', as: :image
end
