class ShiftDetail < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user
end
