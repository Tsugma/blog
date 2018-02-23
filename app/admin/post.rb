ActiveAdmin.register Post do
		permit_params :title, :content, :picture

		show do |t|
			attributes_table do
				row :title
				row :content
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :title
				f.input :content
				f.input :picture, hint: f.post.picture? ? image_tag(post.picture.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			end
			f.actions
		end
end
