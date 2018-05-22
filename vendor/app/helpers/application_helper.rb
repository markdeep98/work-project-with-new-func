module ApplicationHelper
	def header_logic
		if user_signed_in?
			if (current_user.first_name == "" && current_user.last_name == "") || (current_user.first_name == nil && current_user.last_name == nil)
				render 'header/signin'
			else
				render 'header/username'
			end
		else 
			render 'header/nosignin'
		end
	end
end
