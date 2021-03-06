class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to countries_path
    else
    render('new')
    end
  end

  private

  def country_params
    params.require(:country).permit(:name)
  end
end
