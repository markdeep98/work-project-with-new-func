module ApplicationHelper
	def header_logic
		if user_signed_in? 		
						signout = link_to "Sign out", destroy_user_session_path, method: :delete
						editprofile = link_to "Edit profile", edit_user_registration_path
							if current_user.first_name == nil and current_user.last_name == nil
					 			hi = link_to 'Hi, ' + current_user.first_name.to_s + ' ' + current_user.last_name.to_s, edit_user_registration_path
				      end
		else
				signup = link_to "Sign up", new_user_registration_path
				login = link_to "Login", new_user_session_path

				        html = <<-HTML

				          <li class="nav-item signout">
				            <i class="fas fa-user "></i>
				              #{signout}
				          </li>

				          <li class="nav-item edit">
				            <i class="fas fa-user "></i> 
				              #{editprofile}
				          </li>

				          <li class="nav-item edit">
				            <i class="fas fa-user "></i>
				              #{hi}
				          </li>
 
				        <li class="nav-item signup"> 
				          <i class="fas fa-user "></i> 
				            #{signup} 
				        </li>

				        <li class="nav-item login"> 
				          <i class="fas fa-sign-in-alt"></i> 
				            #{login} 
				  </li> 
				  HTML
			  end
			end
		end
		
