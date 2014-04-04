class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render animal_path
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
  end
end
