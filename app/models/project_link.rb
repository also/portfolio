class ProjectLink < ActiveRecord::Base
  belongs_to :project

  def link_text
    title || auto_link_text
  end

  def auto_link_text
    case link_type
    when 'code':
      'get code'
    when 'site'
      'visit site'
    else
      'link'
    end
  end
end
