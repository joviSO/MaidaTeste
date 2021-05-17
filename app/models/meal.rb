# == Schema Information
#
# Table name: meals
#
#  id          :bigint           not null, primary key
#  diet_id     :integer
#  meal_kind   :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Meal < ApplicationRecord
  belongs_to :diet
end
