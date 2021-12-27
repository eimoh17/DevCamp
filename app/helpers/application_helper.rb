module ApplicationHelper
	def sample_helper
		"<p>My Helper</p>".html_safe
	end

	def source_helper(layout_name)
		if session[:source]
			greeting = "Thanks for visiting #{session[:source]} and you are on the #{layout_name} layout"
			content_tag(:p, greeting, class: "source-greeting")
		end
	end

end
