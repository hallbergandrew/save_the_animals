class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
    render 'index'
  end

  def create
    @breed = Breed.new(params[:breed])
    if @breed.save
      redirect_to breeds_path
    else
      render 'new'
    end
  end

  def new
    @breed = Breed.new
    render 'new'
  end

  def destroy
    @breed = Breed.find(params[:id])
    @breed.destroy
    redirect_to breeds_path
  end

  def show
    @breed = Breed.find(params[:id])
    render 'show'
  end

  def edit
    @breed = Breed.find(params[:id])
    render 'edit'

  end

  def update
    @breed = Breed.find(params[:id])
    if @breed.update(params[:breed])
      redirect_to breed_path(@breed)
    else
      render 'edit'
    end

  end
end
