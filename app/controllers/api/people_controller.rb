class Api::PeopleController < ApplicationController
  def index
    if params[:name] && params[:name] != ""
      render json: Person.where("name LIKE ?", "%#{params[:name]}%")
    else
      render json: Person.all
    end
  end
end
