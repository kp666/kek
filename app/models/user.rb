class User < ActiveRecord::Base
  before_create :set_uniq_id

  private

  def set_uniq_id
    self.uniq_id = SecureRandom.hex(4)
  end
end
