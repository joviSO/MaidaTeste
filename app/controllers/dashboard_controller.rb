class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @Dashboard = Person.by_user(current_user)
  end
end
