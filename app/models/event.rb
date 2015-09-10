class Event < ActiveRecord::Base
  belongs_to :user

  default_scope { order "`events`.`from` DESC" }
end
