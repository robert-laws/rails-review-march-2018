module ApplicationHelper
  def full_title(title = '')
    base_title = 'Ruby Review App'
    if title.empty?
      base_title
    else
      title + ' | ' + base_title
    end
  end
end
