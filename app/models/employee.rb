class Employee < ApplicationRecord
  belongs_to :dog

  validates :title, uniqueness: true, presence: true
  validates :alias, uniqueness: true, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
