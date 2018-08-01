require 'pry'
class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.all
  end

  def show
    @preference = Preference.find(params[:id])
  end

  def new
    @preference = Preference.new
  end

  def create
    raise params inspect
    @preference = Preference.new(preference_params)

    if @preference.save
      redirect_to admin_preferences_path
    else
      render :new
    end
  end


  def edit
    @preference = Preferance.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    if @preference.save
      redirect_to admin_preferences_path
    else
      render :edit
    end
  end

end
