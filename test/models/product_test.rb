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
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
