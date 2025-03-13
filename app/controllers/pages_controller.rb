class PagesController < ApplicationController
  layout "white_mode"
  skip_before_action :authenticate_user!, only: :home
  def home
  end
end
