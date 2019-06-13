class DogsController < ApplicationController
  # before_action :find_dog, only: [:show, :edit, :update, :delete]

  def index
    if params[:search]
      @dogs = Dog.where("name like ?", "%#{params[:search]}%")
      # @dogs = Dog.where(name: params[:search])
    else
      @dogs = Dog.order('age')
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  # def find_dog
  #   @dog = Dog.find(params[:id])
  # end

end
