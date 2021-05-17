class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    # @weight = Person.find_by(id: { current_user: { person: :id}}).weight
  end

  def menu_diet
  end
end
