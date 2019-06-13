class DogsController < ApplicationController
  # before_action :find_dog, only: [:show, :edit, :update, :delete]
  
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  # def find_dog
  #   @dog = Dog.find(params[:id])
  # end

end
