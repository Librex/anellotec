module ApplicationHelper
  
  def avatar_url(instructor)
    instructor.avatar.url
  end
  
  def avatar_url(member)
    member.avatar.url
  end
  
end
