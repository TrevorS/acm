module MembersHelper

  def make_check(status)
    if status == true
      "<i class='icon-check'></i>".html_safe
    else
      "<i class='icon-check-empty'></i>".html_safe
    end
  end

  def show_name(recruiter)
    if recruiter.nil?
      'None'
    else
      recruiter.name
    end
  end

  def show_position(position)
    if position.nil?
      ''
    else
      position.name
    end
  end
end
