module ApplicationHelper
  
  def priority_class(level)
   result = ['low', 'normal', 'high']
   result[level]
  end
  
end
