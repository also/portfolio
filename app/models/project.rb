class Project < ActiveRecord::Base
  has_many :primary_links, :class_name => 'ProjectLink', :conditions => "link_type IN ('code', 'site')"
  has_many :secondary_links, :class_name => 'ProjectLink', :conditions => "link_type NOT IN ('code', 'site')"
  has_many :media, :class_name => 'ProjectMedia'

  def to_param
    slug || id.to_s
  end
end
