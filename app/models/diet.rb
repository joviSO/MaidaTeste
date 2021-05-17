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

  validate :travel_in_time?
  validate :second_travel?
  validates :initial_date, presence: true
  validates :final_date, presence: true

  def travel_in_time?
    if DateTime.parse(initial_date) < DateTime.current
      errors.add("isso só é possivel se você tiver uma maquina do tempo")
    end
  end

  def second_travel?
    if DateTime.parse(final_date) < DateTime.initial_date
      errors.add("isso só é possivel se você tiver uma maquina do tempo")
    end
  end
end
