class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: :create_person

  def index
  end

  def create_person

  end
end
