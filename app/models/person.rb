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
  extend Enumerize

  belongs_to :user, optional: true

  has_many :variation_weights
  has_many :diets

  validates :name, presence: true
  validates :gender, presence: true
  validates :weight, presence: true, numericality: { only_integer: true  , greater_than: 0 }
  validates :height, presence: true, numericality: { only_integer: true , greater_than: 0 }

  enumerize :gender, in: {
    male: "Masculino",
    female: "Feminino",
    not_informed: "Não informado",
    other: "Outros"
  }, scope: true, predicates: true, default: :not_informed
end
