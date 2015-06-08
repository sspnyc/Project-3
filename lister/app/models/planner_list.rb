class PlannerList < ActiveRecord::Base
  belongs_to :user
  has_many :budget_items
end
