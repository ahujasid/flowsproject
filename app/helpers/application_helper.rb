module ApplicationHelper

	def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end
=begin
  def js_class?(test_path)
  	return 'active' if request.original_url == '#' + test_path.to_s
  	''
  end
=end

 def js_class?(test_path)
  	return request.fullpath
  	''
  end

end
