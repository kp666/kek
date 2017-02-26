class Story < ActiveRecord::Base
  belongs_to :user
  default_scope { order('created_at desc') }
  after_create :set_permalink

  validates :title, presence: true
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  #serialize :tags, Array

  def to_param
    permalink
  end

  def set_permalink
    self.permalink = "#{id.to_s}-" + title.gsub(/\s+/,'-').gsub(/[^a-zA-Z0-9-]/,'').downcase
    self.save!
  end
end
