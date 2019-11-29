class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, uniqueness: true, presence: true
  before_destroy :check_for_doses

  def check_for_doses
    raise ActiveRecord::InvalidForeignKey if self.doses.any?
  end
end
