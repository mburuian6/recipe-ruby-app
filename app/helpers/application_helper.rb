module ApplicationHelper

  def is_owner(item)
    if current_user #logged in
        return item.user == current_user #item user == current user logged in
    else
        #no one logged in 
        return false
    end
  end

  #Profile is a special 'item'
  def is_profile_owner(profile)
    if current_user #logged in
        return profile.id == current_user.id # profile == current user logged in
    else
        #no one logged in 
        return false
    end
  end

  
end
