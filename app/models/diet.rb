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
  extend Enumerize

  enumerize :gender, in: {
    active: "Ativo",
    deactive: "inativo"
  }, scope: true, predicates: true, default: :inativo

  belongs_to :person, foreign_key: "person_id"

  has_many :meals

  validate :travel_in_time?
  validate :second_travel?
  validates :initial_date, presence: true
  validates :final_date, presence: true

  def travel_in_time?
    if initial_date < DateTime.current
      errors.add("isso só é possivel se você tiver uma maquina do tempo")
    end
  end

  def second_travel?
    if final_date < initial_date
      errors.add("isso só é possivel se você tiver uma maquina do tempo")
    end
  end

  def active_diet
    if DateTime.current <= final_date && DateTime.current >= initial_date
      @diet.status = "ativo"
    end
  end

end
