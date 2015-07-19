module ApplicationHelper
  def set_active_class(path)
    'nav-active' if request.path.include?(path)
  end
end
