class User < ActiveRecord::Base
  has_many :planner_lists
end
