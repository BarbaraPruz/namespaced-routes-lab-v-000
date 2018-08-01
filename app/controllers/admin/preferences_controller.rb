class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.find_or_create(:id => params[:id])
  end
  def show
    @preference = Preference.find_or_create(:id => params[:id])
  end

  def new
    @preference = Preference.find_or_create(:id => 1)
  end

  def create
    @preference = Preference.find(1)
    @preference.update
    redirect_to admin_preferences
  end

  def edit
    @preference = Preferance.find_or_create(:id => 1)
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    if @preference.save
      redirect_to admin_preferences
    else
      render :edit
    end
  end

end
