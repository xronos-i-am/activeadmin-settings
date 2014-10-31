class ActiveadminSettings::SettingsController < ApplicationController
  before_filter :authenticate_user!

  def update
    @object = ActiveadminSettings::Setting.find(params[:id])
    if @object.update_attributes(permitted_params[:setting])
      render :text => @object.value
    else
      render :text => "error"
    end
  end

  private
  def permitted_params
    params.permit!
  end
end