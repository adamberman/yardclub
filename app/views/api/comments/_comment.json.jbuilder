json.extract!(
	comment,
	:id,
	:content
)
if comment.comments.length > 0
	json.nested_comments do
		json.array! comment.comments, partial: 'comment', as: :comment	
	end
end