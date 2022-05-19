# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer          not null
#
class Place < ApplicationRecord
    belongs_to :region
    has_many :products

    accepts_nested_attributes_for :products
end
