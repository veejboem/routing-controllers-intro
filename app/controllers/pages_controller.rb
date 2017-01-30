class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    render :welcome
    @header = "Welcome to the welome page"
  end

  def about
    render :about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended."
    redirect_to welcome_path
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] != "banana"
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to kittens_path(100, 200)
    end
  end
end
