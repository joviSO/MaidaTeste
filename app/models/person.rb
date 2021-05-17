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
class Person < ApplicationRecord
  has_one :user
  has_many :variation_weights

  has_many :diets
end
