module ApplicationHelper
  
  def avatar_url(instructor)
    if instructor.avatar.present?
      instructor.avatar.url
    else
      'default_image.png'
    end
  end
  
  def avatar_url(member)
    if member.avatar.present?
      member.avatar.url
    else
      'default_image.png'
    end
  end
  
  def thumbnail_url(course)
    if course.thumbnail.present?
      instructor.thumbnail.url
    else
      'default_image.png'
    end
  end
  
end
