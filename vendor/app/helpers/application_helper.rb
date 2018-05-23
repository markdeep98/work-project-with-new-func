module ApplicationHelper
  def header_logic
    if user_signed_in?
      @header_text = if (current_user.first_name == '' && current_user.last_name == '') || (current_user.first_name.nil? && current_user.last_name.nil?)
                    'Edit profile'
                  else
                    'Hi, ' + current_user.first_name.to_s + ' ' + current_user.last_name.to_s                    
                  end
      render 'header/signin'
    else
      render 'header/nosignin'
    end
  end
end
