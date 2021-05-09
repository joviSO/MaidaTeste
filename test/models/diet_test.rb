# == Schema Information
#
# Table name: diets
#
#  id           :bigint           not null, primary key
#  person_id    :integer
#  initial_date :datetime
#  final_date   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class DietTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
