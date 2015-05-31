class Activity < ActiveRecord::Base
  belongs_to :user

  after_create :set_permalink

  def to_param
    permalink
  end

  def set_permalink
    self.permalink = title.gsub(/\s+/,'-').gsub(/[^a-zA-Z0-9-]/,'')
    self.save!
  end
end
