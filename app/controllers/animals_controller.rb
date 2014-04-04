class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render 'index'
  end

  def create
    @animal = Animal.new(params[:animal])
    if @animal.save
      flash[:notice] = "Animal #{@animal.name} Added."
      redirect_to animal_path(@animal)
    else
      render 'new'
    end
  end

  def new
    @animal = Animal.new()
    render 'new'
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

  def show
    @animal = Animal.find(params[:id])
    render 'show'
  end

  def edit
    @animal = Animal.find(params[:id])
    render 'edit'
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(params[:animal])
      redirect_to animal_path(@animal)
    else
      render 'edit'
    end
  end

end
