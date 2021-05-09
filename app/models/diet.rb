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
class Diet < ApplicationRecord
  belongs_to :person, foreign_key: "person_id"

  has_many :meals
end
