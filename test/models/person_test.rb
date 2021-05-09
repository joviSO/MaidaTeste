# == Schema Information
#
# Table name: people
#
#  id           :bigint           not null, primary key
#  user_id      :integer
#  name         :string
#  nickname     :string
#  gender       :string
#  weight       :float
#  height       :float
#  ideal_weight :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
