class Horse < ApplicationRecord
  validates :name, :top_speed, :number_of_legs, :age, presence: true
  # has_one_attached :image
  belongs_to :breed

  def self.ransackable_attributes(_auth_object = nil)
    %w[age breeds_id created_at id name number_of_legs top_speed updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    ['breed']
  end
end
