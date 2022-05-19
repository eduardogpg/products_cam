# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
    has_many :places
    validates :name, presence: true

    def products
        Product.where('place_id IN (?)', self.places.pluck(:id))
    end
end
