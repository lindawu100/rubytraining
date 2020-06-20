class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  enum status: { to_do: 0, on_going: 1, done: 2 }
  enum priority: { low: 0, medium: 1, high: 2 }
end
