class Task < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 5, too_short: "%{count} characters is the minimum allowed"}

  def complete!
    self.completed = true
    save
  end
end
