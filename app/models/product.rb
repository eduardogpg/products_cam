# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  serial      :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  place_id    :integer          not null
#
class Product < ApplicationRecord
    belongs_to :place

    has_many :product_categories
    has_many :categories, through: :product_categories


    validates :name, presence: true
    validates :serial, presence: true
    validates :description, presence: true

    
    attr_accessor :working
    attr_accessor :annotation
    
end
