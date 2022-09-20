class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @hotels = Hotel.all
    @rooms = Room.all
  end
end
