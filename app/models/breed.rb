class Breed < ApplicationRecord
  has_many :horses

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id name updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    ['horses']
  end
end
